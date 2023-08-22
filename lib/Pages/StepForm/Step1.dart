import 'package:bottom_picker/resources/arrays.dart';
import 'package:finance_me/Components/TextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:intl/intl.dart';

class StepOnePage extends StatefulWidget {
  final TextEditingController firstname;
  final TextEditingController lastName;
  final TextEditingController adress;
  final TextEditingController tel;
  final Widget dateWidget;

  StepOnePage(
      {super.key,
      required this.firstname,
      required this.lastName,
      required this.adress,
      required this.tel,
      required this.dateWidget});

  @override
  State<StepOnePage> createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  String? convertedDate;
  late int selectedRadioValue;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    selectedRadioValue = 1;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadioValue = val;
      if (selectedRadioValue == 1) return print('Homme');
        print('Femme');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String getDateTime() => convertedDate == null
      ? 'Aucune date*'
      : 'la date de naissance est : $convertedDate';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createTextFieldWithIcon('ex:yacou', 'Entrez votre nom',
                Icons.account_circle, widget.lastName),
            createTextFieldWithIcon('prénom', 'Entrez votre prénom',
                Icons.account_circle, widget.firstname),
            createTextFieldWithIcon('Adress', 'Entrez votre adress',
                Icons.add_location_alt, widget.adress),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: widget.dateWidget),
            createTextFieldWithIcon(
                'tel', 'Telephone', Icons.phone, widget.tel),
            const Padding(
              padding: EdgeInsets.only(left: 17.0, top: 10.0),
              child: Text('Genre'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Column(
                children: <Widget>[
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRadioValue,
                    onChanged: (val) => setSelectedRadio(val!),
                    title: const Text('Homme'),
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRadioValue,
                    onChanged: (val) => setSelectedRadio(val!),
                    title: const Text('Femme'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
