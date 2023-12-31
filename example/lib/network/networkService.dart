import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:built_collection/built_collection.dart';

import '../models/serializers.dart';

String baseUrl = 'https://api.unsplash.com/';
String apiKey = '1AL7VwJz18JLc28G-0lOpKm5nNzS_RAMmLR_SxcvvYk';
Map<String, String> headers = <String, String>{
  'Authorization': 'Client-ID $apiKey'
};

// @JsonSerializable()
Future<T?> fetch<T>(String path) async {
  final response = await http.get(Uri.parse(baseUrl + path), headers: headers);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return serializers.deserialize(json.decode(response.body)) as T?;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load ');
  }
}

Future<BuiltList<T>> fetchList<T>(String path) async {
  final response = await http.get(Uri.parse(baseUrl + path), headers: headers);

  if (response.statusCode == 200) {
    log(response.body);
    return deserializeListOf<T>(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    log(response.request!.url.toString());
    throw Exception('Failed to load ' + path);
  }
}
