// Copyright 2019 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'interpolate.dart';
import 'models/collectionPhoto.dart';
import 'models/collectionPhoto.dart';
import 'network/networkService.dart';

const numberOfItems = 5001;
const minItemHeight = 20.0;
const maxItemHeight = 150.0;
const scrollDuration = Duration(seconds: 2);

const randomMax = 1 << 32;

void main() {
  runApp(ScrollablePositionedListExample());
}

// The root widget for the example app.
class ScrollablePositionedListExample extends StatelessWidget {
  const ScrollablePositionedListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScrollablePositionedList Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ScrollablePositionedListPage(),
    );
  }
}

/// Example widget that uses [ScrollablePositionedList].
///
/// Shows a [ScrollablePositionedList] along with the following controls:
///   - Buttons to jump or scroll to certain items in the list.
///   - Slider to control the alignment of the items being scrolled or jumped
///   to.
///   - A checkbox to reverse the list.
///
/// If the device this example is being used on is in portrait mode, the list
/// will be vertically scrollable, and if the device is in landscape mode, the
/// list will be horizontally scrollable.
class ScrollablePositionedListPage extends StatefulWidget {
  const ScrollablePositionedListPage({Key? key}) : super(key: key);

  @override
  _ScrollablePositionedListPageState createState() =>
      _ScrollablePositionedListPageState();
}

class _ScrollablePositionedListPageState
    extends State<ScrollablePositionedListPage> {
  /// Controller to scroll or jump to a particular item.
  final ItemScrollController itemScrollController = ItemScrollController();

  /// Controller to scroll a certain number of pixels relative to the current
  /// scroll offset.
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  late List<double> itemHeights;
  late List<Color> itemColors;
  bool reversed = false;

  /// The alignment to be used next time the user scrolls or jumps to an item.
  double alignment = 0;
  BuiltList<CollectionPhoto>? photosList;

  @override
  void initState() {
    super.initState();
    final heightGenerator = Random(328902348);
    final colorGenerator = Random(42490823);
    itemHeights = List<double>.generate(
        numberOfItems,
        (int _) =>
            heightGenerator.nextDouble() * (maxItemHeight - minItemHeight) +
            minItemHeight);
    itemColors = List<Color>.generate(numberOfItems,
        (int _) => Color(colorGenerator.nextInt(randomMax)).withOpacity(1));
    Future.microtask(() async {
      var list = await fetchList<CollectionPhoto>(
          "photos/random?count=30&query=nature");
      setState(() {
        this.photosList = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Material(
        child: OrientationBuilder(
          builder: (context, orientation) => Column(
            children: <Widget>[
              Expanded(
                child: list(orientation),
              ),
              positionsView,
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      scrollControlButtons,
                      const SizedBox(height: 10),
                      jumpControlButtons,
                      alignmentControl,
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget get alignmentControl => Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text('Alignment: '),
          SizedBox(
            width: 200,
            child: SliderTheme(
              data: SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
              ),
              child: Slider(
                value: alignment,
                label: alignment.toStringAsFixed(2),
                onChanged: (double value) => setState(() => alignment = value),
              ),
            ),
          ),
        ],
      );

  Widget list(Orientation orientation) {
    var mediaQuerySize = MediaQuery.of(context).size;
    var maxSize = orientation == Orientation.portrait
        ? mediaQuerySize.width
        : mediaQuerySize.height;
    return ScrollablePositionedList.animatedBuilder(
      itemCount: photosList!.length,
      animatedItemBuilder: (context, index, currPos) =>
          item(index, orientation, currPos, maxSize),
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      reverse: reversed,
      scrollDirection:
          orientation == Orientation.portrait ? Axis.vertical : Axis.horizontal,
      physics: BouncingScrollPhysics(),
    );
  }

  Widget get positionsView => ValueListenableBuilder<Iterable<ItemPosition>>(
        valueListenable: itemPositionsListener.itemPositions,
        builder: (context, positions, child) {
          int? min;
          int? max;
          double? active;
          if (positions.isNotEmpty) {
            // Determine the first visible item by finding the item with the
            // smallest trailing edge that is greater than 0.  i.e. the first
            // item whose trailing edge in visible in the viewport.
            min = positions
                .where((ItemPosition position) => position.itemTrailingEdge > 0)
                .reduce((ItemPosition min, ItemPosition position) =>
                    position.itemTrailingEdge < min.itemTrailingEdge
                        ? position
                        : min)
                .index;
            // Determine the last visible item by finding the item with the
            // greatest leading edge that is less than 1.  i.e. the last
            // item whose leading edge in visible in the viewport.
            max = positions
                .where((ItemPosition position) => position.itemLeadingEdge < 1)
                .reduce((ItemPosition max, ItemPosition position) =>
                    position.itemLeadingEdge > max.itemLeadingEdge
                        ? position
                        : max)
                .index;
            active = (positions.firstWhereOrNull(
                        (ItemPosition position) => position is ActivePosition)
                    as ActivePosition?)
                ?.activeIndex;
          }
          return Wrap(
            // runSpacing: 2,
            spacing: 5,
            children: <Widget>[
              Text('First Item: ${min ?? ''}'),
              Text('Last Item: ${max ?? ''}'),
              Text('active Item: ${active?.toStringAsFixed(2) ?? ''}'),
              Row(
                children: [
                  const Text('Reversed:'),
                  Checkbox(
                      value: reversed,
                      onChanged: (bool? value) => setState(() {
                            reversed = value!;
                          }))
                ],
              )
            ],
          );
        },
      );

  Widget get scrollControlButtons => Row(
        children: <Widget>[
          const Text('scroll to'),
          scrollItemButton(0),
          scrollItemButton(5),
          scrollItemButton(10),
          scrollItemButton(100),
          scrollItemButton(1000),
          scrollItemButton(5000),
        ],
      );

  Widget get scrollOffsetControlButtons => Row(
        children: <Widget>[
          const Text('scroll by'),
          scrollOffsetButton(-1000),
          scrollOffsetButton(-100),
          scrollOffsetButton(-10),
          scrollOffsetButton(10),
          scrollOffsetButton(100),
          scrollOffsetButton(1000),
        ],
      );

  Widget get jumpControlButtons => Row(
        children: <Widget>[
          const Text('jump to'),
          jumpButton(0),
          jumpButton(5),
          jumpButton(10),
          jumpButton(100),
          jumpButton(1000),
          jumpButton(5000),
        ],
      );

  ButtonStyle _scrollButtonStyle({required double horizonalPadding}) =>
      ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: horizonalPadding, vertical: 0),
        ),
        minimumSize: MaterialStateProperty.all(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      );

  Widget scrollItemButton(int value) => TextButton(
        key: ValueKey<String>('Scroll$value'),
        onPressed: () => scrollTo(value),
        child: Text('$value'),
        style: _scrollButtonStyle(horizonalPadding: 20),
      );

  Widget scrollOffsetButton(int value) => TextButton(
        key: ValueKey<String>('Scroll$value'),
        onPressed: () => scrollBy(value.toDouble()),
        child: Text('$value'),
        style: _scrollButtonStyle(horizonalPadding: 10),
      );

  Widget scrollPixelButton(int value) => TextButton(
        key: ValueKey<String>('Scroll$value'),
        onPressed: () => scrollTo(value),
        child: Text('$value'),
        style: _scrollButtonStyle(horizonalPadding: 20),
      );

  Widget jumpButton(int value) => TextButton(
        key: ValueKey<String>('Jump$value'),
        onPressed: () => jumpTo(value),
        child: Text('$value'),
        style: _scrollButtonStyle(horizonalPadding: 20),
      );

  void scrollTo(int index) => itemScrollController.scrollTo(
      index: index,
      duration: scrollDuration,
      curve: Curves.easeInOutCubic,
      alignment: alignment);

  void scrollBy(double offset) => scrollOffsetController.animateScroll(
      offset: offset, duration: scrollDuration, curve: Curves.easeInOutCubic);

  void jumpTo(int index) =>
      itemScrollController.jumpTo(index: index, alignment: alignment);

  /// Generate item number [i].
  Widget item(int i, Orientation orientation, double currPos, double maxSize) {
    var photo = photosList![i];
    var isVertical = orientation == Orientation.portrait;

    var width = (isVertical
        ? maxSize
        : (maxSize * (photo.width ?? 0)) / (photo.height ?? 1));
    var height = (isVertical
        ? (maxSize * (photo.height ?? 0)) / (photo.width ?? 1)
        : maxSize);

    var scale = interpolate(
      currPos.roundToPrecision(6),
      InterpolateConfig([
        i.toDouble(),
        i + 1
      ], [
        1.0,
        1.8,
      ], extrapolate: Extrapolate.CLAMP),
    ).roundToPrecision(4);
    var translatePer = interpolate(
          currPos.roundToPrecision(6),
          InterpolateConfig([
            i.toDouble(),
            i + 1
          ], [
            0.0,
            0.3,
          ], extrapolate: Extrapolate.CLAMP),
        ) *
        (reversed ? -1 : 1);

    return SizedBox(
      height: height,
      width: width,
      child: Material(
        color: Colors.transparent,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          alignment: AlignmentDirectional.topStart,
          children: [
            Positioned.fill(
              child: FractionalTranslation(
                translation: Offset(!isVertical ? translatePer : 0.0,
                    isVertical ? translatePer : 0.0),
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..scale(scale, scale),
                  child: Image.network(
                    photo.urls?.regular ?? photo.urls?.thumb ?? "",
                    fit: BoxFit.fill,
                    loadingBuilder: (context, image, progress) {
                      if (progress != null)
                        return Center(
                          child: CircularProgressIndicator(
                            value: (progress.cumulativeBytesLoaded) /
                                (progress.expectedTotalBytes ?? 1.0),
                          ),
                        );
                      return image;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension Round on double {
  double roundToPrecision(int n) {
    int fac = pow(10, n).toInt();
    return (this * fac).round() / fac;
  }
}
