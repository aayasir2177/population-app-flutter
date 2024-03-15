import 'package:covid_app/views/country_details_screen.dart';
import 'package:flutter/material.dart';

class ClickableRow extends StatelessWidget {
  final String name;
  final String population;
  final String flag;
  const ClickableRow(
      {super.key,
      required this.name,
      required this.population,
      required this.flag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CountryDetailsScreen(
                        name: name,
                        population: population,
                        flag: flag,
                      )));
        },
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(flag),
          ),
          title: Text(
            name,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
