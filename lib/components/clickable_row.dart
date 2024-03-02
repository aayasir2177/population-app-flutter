import 'package:covid_app/views/country_details_screen.dart';
import 'package:flutter/material.dart';

class ClickableRow extends StatelessWidget {
  final String name;
  const ClickableRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CountryDetailsScreen(name: name);
          }));
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          color: Colors.grey.shade800,
          child: Text(name),
        ),
      ),
    );
  }
}
