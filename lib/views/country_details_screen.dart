import 'package:covid_app/components/resusable_row.dart';
import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatelessWidget {
  final String name;
  const CountryDetailsScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Country Info",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        width: double.infinity,
        child: Column(
          children: [
            CircleAvatar(
              minRadius: 50,
              maxRadius: 75,
              child: Text(name),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  ResusableRow(dataTitle: "Country", dataValue: name),
                  ResusableRow(dataTitle: "Population", dataValue: name)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
