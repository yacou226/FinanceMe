import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  late int selectedRadioValue; // To hold the selected value

  @override
  void initState() {
    super.initState();
    selectedRadioValue = 1; // Initial selected value
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadioValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              value: 1,
              groupValue: selectedRadioValue,
              onChanged: (val) => setSelectedRadio(val!),
              title: const Text('Option 1'),
            ),
            RadioListTile(
              value: 2,
              groupValue: selectedRadioValue,
              onChanged: (val) => setSelectedRadio(val!),
              title: const Text('Option 2'),
            ),
            RadioListTile(
              value: 3,
              groupValue: selectedRadioValue,
              onChanged: (val) => setSelectedRadio(val!),
              title: const Text('Option 3'),
            ),
          ],
        ),
      ),
    );
  }
}

