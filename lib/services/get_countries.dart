import 'dart:convert';

import 'package:covid_app/models/countries_model.dart';
import 'package:http/http.dart' as http;

Future<List<CountriesModel>> getCountries() async {
  const appUrl =
      "https://restcountries.com/v3.1/all?fields=name,flags,population";

  final response = await http.get(Uri.parse(appUrl));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    final List<CountriesModel> dataList = [];

    for (var i = 0; i < data.length; i++) {
      dataList.add(CountriesModel.fromJson(data[i]));
    }

    return dataList;
  } else {
    throw Exception("Error");
  }
}
