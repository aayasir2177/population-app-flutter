import 'package:covid_app/views/country_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CountryListScreen extends StatefulWidget {
  const CountryListScreen({super.key});

  @override
  State<CountryListScreen> createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  TextEditingController countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Country List",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade400,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            TextField(
              controller: countryController,
              style: const TextStyle(color: Colors.white70),
              cursorColor: Colors.white70,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(color: Colors.white70)),
                prefixIcon: const Icon(Icons.search),
                hintText: "Enter country",
                hintStyle: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CountryDetailsScreen(
                                        name: "Name here",
                                      )));
                        },
                        child: const ListTile(
                          leading: CircleAvatar(
                            child: Text("Flag"),
                          ),
                          title: Text(
                            "Country Name",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
