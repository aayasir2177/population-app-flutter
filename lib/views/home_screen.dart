import 'package:covid_app/components/clickable_row.dart';
import 'package:covid_app/views/country_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "World Population App",
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Top 3",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const PieChart(
                  legendOptions: LegendOptions(
                      legendShape: BoxShape.rectangle,
                      legendPosition: LegendPosition.left),
                  chartValuesOptions:
                      ChartValuesOptions(showChartValuesInPercentage: true),
                  dataMap: {
                    "India": 25,
                    "China": 25,
                    "United States": 25,
                  }),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Peek View",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 300,
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        ClickableRow(name: "Pakistan"),
                        ClickableRow(name: "Afghanistan"),
                        ClickableRow(name: "Iran"),
                        ClickableRow(name: "Turkey"),
                        ClickableRow(name: "Canada"),
                        ClickableRow(name: "Japan"),
                        ClickableRow(name: "Russia"),
                        ClickableRow(name: "Germany"),
                        ClickableRow(name: "France"),
                        ClickableRow(name: "Malaysia"),
                      ],
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.greenAccent.shade400),
                          iconColor:
                              MaterialStatePropertyAll(Colors.grey.shade900)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CountryListScreen()));
                      },
                      icon: const Icon(Icons.public),
                      label: Text(
                        "Track Countries",
                        style: TextStyle(color: Colors.grey.shade900),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
