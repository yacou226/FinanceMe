import 'package:bottom_picker/resources/arrays.dart';
import 'package:finance_me/Components/TextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:intl/intl.dart';

class StepOnePage extends StatefulWidget {
  const StepOnePage({super.key});

  @override
  State<StepOnePage> createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController lastname = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController adress = TextEditingController();

  String? convertedDate;
  bool genre = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
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
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createTextFieldWithIcon(
                'ex:yacou', 'Entrez votre nom', Icons.account_circle, lastname),
            createTextFieldWithIcon(
                'prénom', 'Entrez votre prénom', Icons.account_circle, firstname),
            createTextFieldWithIcon(
                'Adress', 'Entrez votre adress', Icons.add_location_alt, adress),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextButton(
                  onPressed: () {
                    _openDatePicker(context);
                  },
                  child: const Text('Choississez votre date de naissance')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Text(getDateTime(),
                      style: TextStyle(
                          color:
                              convertedDate == null ? Colors.red : Colors.black,
                          fontSize: 16.0))),
            ),
                        createTextFieldWithIcon('tel', 'Telephone', Icons.phone, firstname),

            const Padding(
              padding: EdgeInsets.only(left: 17.0, top: 10.0),
              child: Text('Genre'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () => setState(() {
                            genre = true;
                          }),
                      child: Text('Homme')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Radio(
                    value: 2,
                    groupValue: 2,
                    onChanged: (int? value) {},
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text('Femme'),
                  Radio(
                    value: 1,
                    groupValue: 2,
                    onChanged: (int? value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _openDatePicker(BuildContext context) {
    BottomPicker.date(
      buttonSingleColor: Colors.black,
      layoutOrientation: LayoutOrientation.ltr,
      height: 400.0,
      backgroundColor: Colors.white,
      description: 'Jour |Mois |Année',
      title: 'Choississez votre date',
      dateOrder: DatePickerDateOrder.dmy,
      pickerTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      titleStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Colors.blue,
      ),
      onChange: (index) {},
      onSubmit: (index) {
        setState(() {
          convertedDate = DateFormat('dd-MM-yyyy').format(index);
        });
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }
}
