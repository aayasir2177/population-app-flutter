import 'package:flutter/material.dart';

class ResusableRow extends StatelessWidget {
  final String dataTitle, dataValue;
  const ResusableRow(
      {super.key, required this.dataTitle, required this.dataValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        color: Colors.grey.shade800,
        child:
            Row(children: [Text(dataTitle), const Spacer(), Text(dataValue)]),
      ),
    );
  }
}
