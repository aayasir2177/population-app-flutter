import 'package:covid_app/services/get_country.dart';
import 'package:covid_app/views/country_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> population = [];
  Future getPop() async {
    population = await getCountry("pakistan");
  }

  @override
  void initState() {
    super.initState();
  }

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
          color: Colors.grey.shade900,
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
              Column(
                children: [
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
