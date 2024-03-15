import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> getCountry(String name) async {
  final appUrl =
      "https://restcountries.com/v3.1/name/$name?fields=name,flags,population";

  final response = await http.get(Uri.parse(appUrl));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    return data;
  } else {
    throw Exception("Error");
  }
}
