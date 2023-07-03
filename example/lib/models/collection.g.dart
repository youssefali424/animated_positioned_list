// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Collection> _$collectionSerializer = new _$CollectionSerializer();
Serializer<CoverPhoto> _$coverPhotoSerializer = new _$CoverPhotoSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();
Serializer<Links> _$linksSerializer = new _$LinksSerializer();
Serializer<Urls> _$urlsSerializer = new _$UrlsSerializer();
Serializer<ProfileImage> _$profileImageSerializer =
    new _$ProfileImageSerializer();

class _$CollectionSerializer implements StructuredSerializer<Collection> {
  @override
  final Iterable<Type> types = const [Collection, _$Collection];
  @override
  final String wireName = 'Collection';

  @override
  Iterable<Object?> serialize(Serializers serializers, Collection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.publishedAt;
    if (value != null) {
      result
        ..add('published_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalPhotos;
    if (value != null) {
      result
        ..add('total_photos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.private;
    if (value != null) {
      result
        ..add('private')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.shareKey;
    if (value != null) {
      result
        ..add('share_key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverPhoto;
    if (value != null) {
      result
        ..add('cover_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CoverPhoto)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(User)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Links)));
    }
    return result;
  }

  @override
  Collection deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'published_at':
          result.publishedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_photos':
          result.totalPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'share_key':
          result.shareKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover_photo':
          result.coverPhoto.replace(serializers.deserialize(value,
              specifiedType: const FullType(CoverPhoto))! as CoverPhoto);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(Links))! as Links);
          break;
      }
    }

    return result.build();
  }
}

class _$CoverPhotoSerializer implements StructuredSerializer<CoverPhoto> {
  @override
  final Iterable<Type> types = const [CoverPhoto, _$CoverPhoto];
  @override
  final String wireName = 'CoverPhoto';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoverPhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.width;
    if (value != null) {
      result
        ..add('width')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likedByUser;
    if (value != null) {
      result
        ..add('liked_by_user')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(User)));
    }
    value = object.urls;
    if (value != null) {
      result
        ..add('urls')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Urls)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Links)));
    }
    return result;
  }

  @override
  CoverPhoto deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoverPhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'liked_by_user':
          result.likedByUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
              specifiedType: const FullType(Urls))! as Urls);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(Links))! as Links);
          break;
      }
    }

    return result.build();
  }
}

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.portfolioUrl;
    if (value != null) {
      result
        ..add('portfolio_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalLikes;
    if (value != null) {
      result
        ..add('total_likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalPhotos;
    if (value != null) {
      result
        ..add('total_photos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalCollections;
    if (value != null) {
      result
        ..add('total_collections')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profileImage;
    if (value != null) {
      result
        ..add('profile_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProfileImage)));
    }
    value = object.links;
    if (value != null) {
      result
        ..add('links')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Links)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'portfolio_url':
          result.portfolioUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_likes':
          result.totalLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_photos':
          result.totalPhotos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_collections':
          result.totalCollections = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'profile_image':
          result.profileImage.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProfileImage))! as ProfileImage);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(Links))! as Links);
          break;
      }
    }

    return result.build();
  }
}

class _$LinksSerializer implements StructuredSerializer<Links> {
  @override
  final Iterable<Type> types = const [Links, _$Links];
  @override
  final String wireName = 'Links';

  @override
  Iterable<Object?> serialize(Serializers serializers, Links object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.self;
    if (value != null) {
      result
        ..add('self')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.html;
    if (value != null) {
      result
        ..add('html')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.related;
    if (value != null) {
      result
        ..add('related')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Links deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photos':
          result.photos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'related':
          result.related = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UrlsSerializer implements StructuredSerializer<Urls> {
  @override
  final Iterable<Type> types = const [Urls, _$Urls];
  @override
  final String wireName = 'Urls';

  @override
  Iterable<Object?> serialize(Serializers serializers, Urls object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.raw;
    if (value != null) {
      result
        ..add('raw')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regular;
    if (value != null) {
      result
        ..add('regular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.small;
    if (value != null) {
      result
        ..add('small')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Urls deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'raw':
          result.raw = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regular':
          result.regular = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileImageSerializer implements StructuredSerializer<ProfileImage> {
  @override
  final Iterable<Type> types = const [ProfileImage, _$ProfileImage];
  @override
  final String wireName = 'ProfileImage';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProfileImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.small;
    if (value != null) {
      result
        ..add('small')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProfileImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Collection extends Collection {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? publishedAt;
  @override
  final String? updatedAt;
  @override
  final int? totalPhotos;
  @override
  final bool? private;
  @override
  final String? shareKey;
  @override
  final CoverPhoto? coverPhoto;
  @override
  final User? user;
  @override
  final Links? links;

  factory _$Collection([void Function(CollectionBuilder)? updates]) =>
      (new CollectionBuilder()..update(updates))._build();

  _$Collection._(
      {this.id,
      this.title,
      this.description,
      this.publishedAt,
      this.updatedAt,
      this.totalPhotos,
      this.private,
      this.shareKey,
      this.coverPhoto,
      this.user,
      this.links})
      : super._();

  @override
  Collection rebuild(void Function(CollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionBuilder toBuilder() => new CollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Collection &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        publishedAt == other.publishedAt &&
        updatedAt == other.updatedAt &&
        totalPhotos == other.totalPhotos &&
        private == other.private &&
        shareKey == other.shareKey &&
        coverPhoto == other.coverPhoto &&
        user == other.user &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            title.hashCode),
                                        description.hashCode),
                                    publishedAt.hashCode),
                                updatedAt.hashCode),
                            totalPhotos.hashCode),
                        private.hashCode),
                    shareKey.hashCode),
                coverPhoto.hashCode),
            user.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Collection')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('publishedAt', publishedAt)
          ..add('updatedAt', updatedAt)
          ..add('totalPhotos', totalPhotos)
          ..add('private', private)
          ..add('shareKey', shareKey)
          ..add('coverPhoto', coverPhoto)
          ..add('user', user)
          ..add('links', links))
        .toString();
  }
}

class CollectionBuilder implements Builder<Collection, CollectionBuilder> {
  _$Collection? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _publishedAt;
  String? get publishedAt => _$this._publishedAt;
  set publishedAt(String? publishedAt) => _$this._publishedAt = publishedAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  int? _totalPhotos;
  int? get totalPhotos => _$this._totalPhotos;
  set totalPhotos(int? totalPhotos) => _$this._totalPhotos = totalPhotos;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _shareKey;
  String? get shareKey => _$this._shareKey;
  set shareKey(String? shareKey) => _$this._shareKey = shareKey;

  CoverPhotoBuilder? _coverPhoto;
  CoverPhotoBuilder get coverPhoto =>
      _$this._coverPhoto ??= new CoverPhotoBuilder();
  set coverPhoto(CoverPhotoBuilder? coverPhoto) =>
      _$this._coverPhoto = coverPhoto;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  LinksBuilder? _links;
  LinksBuilder get links => _$this._links ??= new LinksBuilder();
  set links(LinksBuilder? links) => _$this._links = links;

  CollectionBuilder();

  CollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _publishedAt = $v.publishedAt;
      _updatedAt = $v.updatedAt;
      _totalPhotos = $v.totalPhotos;
      _private = $v.private;
      _shareKey = $v.shareKey;
      _coverPhoto = $v.coverPhoto?.toBuilder();
      _user = $v.user?.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Collection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Collection;
  }

  @override
  void update(void Function(CollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Collection build() => _build();

  _$Collection _build() {
    _$Collection _$result;
    try {
      _$result = _$v ??
          new _$Collection._(
              id: id,
              title: title,
              description: description,
              publishedAt: publishedAt,
              updatedAt: updatedAt,
              totalPhotos: totalPhotos,
              private: private,
              shareKey: shareKey,
              coverPhoto: _coverPhoto?.build(),
              user: _user?.build(),
              links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coverPhoto';
        _coverPhoto?.build();
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Collection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CoverPhoto extends CoverPhoto {
  @override
  final String? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  final int? likes;
  @override
  final bool? likedByUser;
  @override
  final String? description;
  @override
  final User? user;
  @override
  final Urls? urls;
  @override
  final Links? links;

  factory _$CoverPhoto([void Function(CoverPhotoBuilder)? updates]) =>
      (new CoverPhotoBuilder()..update(updates))._build();

  _$CoverPhoto._(
      {this.id,
      this.width,
      this.height,
      this.color,
      this.likes,
      this.likedByUser,
      this.description,
      this.user,
      this.urls,
      this.links})
      : super._();

  @override
  CoverPhoto rebuild(void Function(CoverPhotoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverPhotoBuilder toBuilder() => new CoverPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverPhoto &&
        id == other.id &&
        width == other.width &&
        height == other.height &&
        color == other.color &&
        likes == other.likes &&
        likedByUser == other.likedByUser &&
        description == other.description &&
        user == other.user &&
        urls == other.urls &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), width.hashCode),
                                    height.hashCode),
                                color.hashCode),
                            likes.hashCode),
                        likedByUser.hashCode),
                    description.hashCode),
                user.hashCode),
            urls.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoverPhoto')
          ..add('id', id)
          ..add('width', width)
          ..add('height', height)
          ..add('color', color)
          ..add('likes', likes)
          ..add('likedByUser', likedByUser)
          ..add('description', description)
          ..add('user', user)
          ..add('urls', urls)
          ..add('links', links))
        .toString();
  }
}

class CoverPhotoBuilder implements Builder<CoverPhoto, CoverPhotoBuilder> {
  _$CoverPhoto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  bool? _likedByUser;
  bool? get likedByUser => _$this._likedByUser;
  set likedByUser(bool? likedByUser) => _$this._likedByUser = likedByUser;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  UrlsBuilder? _urls;
  UrlsBuilder get urls => _$this._urls ??= new UrlsBuilder();
  set urls(UrlsBuilder? urls) => _$this._urls = urls;

  LinksBuilder? _links;
  LinksBuilder get links => _$this._links ??= new LinksBuilder();
  set links(LinksBuilder? links) => _$this._links = links;

  CoverPhotoBuilder();

  CoverPhotoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _width = $v.width;
      _height = $v.height;
      _color = $v.color;
      _likes = $v.likes;
      _likedByUser = $v.likedByUser;
      _description = $v.description;
      _user = $v.user?.toBuilder();
      _urls = $v.urls?.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoverPhoto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoverPhoto;
  }

  @override
  void update(void Function(CoverPhotoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverPhoto build() => _build();

  _$CoverPhoto _build() {
    _$CoverPhoto _$result;
    try {
      _$result = _$v ??
          new _$CoverPhoto._(
              id: id,
              width: width,
              height: height,
              color: color,
              likes: likes,
              likedByUser: likedByUser,
              description: description,
              user: _user?.build(),
              urls: _urls?.build(),
              links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'urls';
        _urls?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CoverPhoto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final String? id;
  @override
  final String? updatedAt;
  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final int? totalLikes;
  @override
  final int? totalPhotos;
  @override
  final int? totalCollections;
  @override
  final ProfileImage? profileImage;
  @override
  final Links? links;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.updatedAt,
      this.username,
      this.name,
      this.portfolioUrl,
      this.bio,
      this.location,
      this.totalLikes,
      this.totalPhotos,
      this.totalCollections,
      this.profileImage,
      this.links})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        updatedAt == other.updatedAt &&
        username == other.username &&
        name == other.name &&
        portfolioUrl == other.portfolioUrl &&
        bio == other.bio &&
        location == other.location &&
        totalLikes == other.totalLikes &&
        totalPhotos == other.totalPhotos &&
        totalCollections == other.totalCollections &&
        profileImage == other.profileImage &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                updatedAt.hashCode),
                                            username.hashCode),
                                        name.hashCode),
                                    portfolioUrl.hashCode),
                                bio.hashCode),
                            location.hashCode),
                        totalLikes.hashCode),
                    totalPhotos.hashCode),
                totalCollections.hashCode),
            profileImage.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('updatedAt', updatedAt)
          ..add('username', username)
          ..add('name', name)
          ..add('portfolioUrl', portfolioUrl)
          ..add('bio', bio)
          ..add('location', location)
          ..add('totalLikes', totalLikes)
          ..add('totalPhotos', totalPhotos)
          ..add('totalCollections', totalCollections)
          ..add('profileImage', profileImage)
          ..add('links', links))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _portfolioUrl;
  String? get portfolioUrl => _$this._portfolioUrl;
  set portfolioUrl(String? portfolioUrl) => _$this._portfolioUrl = portfolioUrl;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _totalLikes;
  int? get totalLikes => _$this._totalLikes;
  set totalLikes(int? totalLikes) => _$this._totalLikes = totalLikes;

  int? _totalPhotos;
  int? get totalPhotos => _$this._totalPhotos;
  set totalPhotos(int? totalPhotos) => _$this._totalPhotos = totalPhotos;

  int? _totalCollections;
  int? get totalCollections => _$this._totalCollections;
  set totalCollections(int? totalCollections) =>
      _$this._totalCollections = totalCollections;

  ProfileImageBuilder? _profileImage;
  ProfileImageBuilder get profileImage =>
      _$this._profileImage ??= new ProfileImageBuilder();
  set profileImage(ProfileImageBuilder? profileImage) =>
      _$this._profileImage = profileImage;

  LinksBuilder? _links;
  LinksBuilder get links => _$this._links ??= new LinksBuilder();
  set links(LinksBuilder? links) => _$this._links = links;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _updatedAt = $v.updatedAt;
      _username = $v.username;
      _name = $v.name;
      _portfolioUrl = $v.portfolioUrl;
      _bio = $v.bio;
      _location = $v.location;
      _totalLikes = $v.totalLikes;
      _totalPhotos = $v.totalPhotos;
      _totalCollections = $v.totalCollections;
      _profileImage = $v.profileImage?.toBuilder();
      _links = $v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              updatedAt: updatedAt,
              username: username,
              name: name,
              portfolioUrl: portfolioUrl,
              bio: bio,
              location: location,
              totalLikes: totalLikes,
              totalPhotos: totalPhotos,
              totalCollections: totalCollections,
              profileImage: _profileImage?.build(),
              links: _links?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'profileImage';
        _profileImage?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Links extends Links {
  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? photos;
  @override
  final String? related;

  factory _$Links([void Function(LinksBuilder)? updates]) =>
      (new LinksBuilder()..update(updates))._build();

  _$Links._({this.self, this.html, this.photos, this.related}) : super._();

  @override
  Links rebuild(void Function(LinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinksBuilder toBuilder() => new LinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Links &&
        self == other.self &&
        html == other.html &&
        photos == other.photos &&
        related == other.related;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, self.hashCode), html.hashCode), photos.hashCode),
        related.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Links')
          ..add('self', self)
          ..add('html', html)
          ..add('photos', photos)
          ..add('related', related))
        .toString();
  }
}

class LinksBuilder implements Builder<Links, LinksBuilder> {
  _$Links? _$v;

  String? _self;
  String? get self => _$this._self;
  set self(String? self) => _$this._self = self;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  String? _photos;
  String? get photos => _$this._photos;
  set photos(String? photos) => _$this._photos = photos;

  String? _related;
  String? get related => _$this._related;
  set related(String? related) => _$this._related = related;

  LinksBuilder();

  LinksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _self = $v.self;
      _html = $v.html;
      _photos = $v.photos;
      _related = $v.related;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Links other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Links;
  }

  @override
  void update(void Function(LinksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Links build() => _build();

  _$Links _build() {
    final _$result = _$v ??
        new _$Links._(self: self, html: html, photos: photos, related: related);
    replace(_$result);
    return _$result;
  }
}

class _$Urls extends Urls {
  @override
  final String? raw;
  @override
  final String? full;
  @override
  final String? regular;
  @override
  final String? small;
  @override
  final String? thumb;

  factory _$Urls([void Function(UrlsBuilder)? updates]) =>
      (new UrlsBuilder()..update(updates))._build();

  _$Urls._({this.raw, this.full, this.regular, this.small, this.thumb})
      : super._();

  @override
  Urls rebuild(void Function(UrlsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlsBuilder toBuilder() => new UrlsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urls &&
        raw == other.raw &&
        full == other.full &&
        regular == other.regular &&
        small == other.small &&
        thumb == other.thumb;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, raw.hashCode), full.hashCode), regular.hashCode),
            small.hashCode),
        thumb.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Urls')
          ..add('raw', raw)
          ..add('full', full)
          ..add('regular', regular)
          ..add('small', small)
          ..add('thumb', thumb))
        .toString();
  }
}

class UrlsBuilder implements Builder<Urls, UrlsBuilder> {
  _$Urls? _$v;

  String? _raw;
  String? get raw => _$this._raw;
  set raw(String? raw) => _$this._raw = raw;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _regular;
  String? get regular => _$this._regular;
  set regular(String? regular) => _$this._regular = regular;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  UrlsBuilder();

  UrlsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _raw = $v.raw;
      _full = $v.full;
      _regular = $v.regular;
      _small = $v.small;
      _thumb = $v.thumb;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Urls other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Urls;
  }

  @override
  void update(void Function(UrlsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Urls build() => _build();

  _$Urls _build() {
    final _$result = _$v ??
        new _$Urls._(
            raw: raw, full: full, regular: regular, small: small, thumb: thumb);
    replace(_$result);
    return _$result;
  }
}

class _$ProfileImage extends ProfileImage {
  @override
  final String? small;
  @override
  final String? medium;
  @override
  final String? large;

  factory _$ProfileImage([void Function(ProfileImageBuilder)? updates]) =>
      (new ProfileImageBuilder()..update(updates))._build();

  _$ProfileImage._({this.small, this.medium, this.large}) : super._();

  @override
  ProfileImage rebuild(void Function(ProfileImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileImageBuilder toBuilder() => new ProfileImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileImage &&
        small == other.small &&
        medium == other.medium &&
        large == other.large;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, small.hashCode), medium.hashCode), large.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileImage')
          ..add('small', small)
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class ProfileImageBuilder
    implements Builder<ProfileImage, ProfileImageBuilder> {
  _$ProfileImage? _$v;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  ProfileImageBuilder();

  ProfileImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small;
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileImage;
  }

  @override
  void update(void Function(ProfileImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileImage build() => _build();

  _$ProfileImage _build() {
    final _$result =
        _$v ?? new _$ProfileImage._(small: small, medium: medium, large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
