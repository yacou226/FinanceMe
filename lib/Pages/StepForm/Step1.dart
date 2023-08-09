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


     StepOnePage({
    super.key,
     required this.firstname, 
     required this.lastName, 
     required this.adress, 
     required this.tel,
     required this.dateWidget

    });

  @override
  State<StepOnePage> createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage>  with SingleTickerProviderStateMixin {
  late AnimationController _controller;


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
                'ex:yacou', 'Entrez votre nom', Icons.account_circle, widget.lastName),
            createTextFieldWithIcon(
                'prénom', 'Entrez votre prénom', Icons.account_circle, widget.firstname),
            createTextFieldWithIcon(
                'Adress', 'Entrez votre adress', Icons.add_location_alt, widget.adress),
  
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: widget.dateWidget
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            //   child: Container(
            //       padding: const EdgeInsets.all(10.0),
            //       width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //           border: Border.all(color: Colors.grey.shade400),
            //           borderRadius: BorderRadius.all(Radius.circular(8.0))),
            //       child: Text(getDateTime(),
            //           style: TextStyle(
            //               color:
            //                   convertedDate == null ? Colors.red : Colors.black,
            //               fontSize: 16.0))),
            // ),
                        createTextFieldWithIcon('tel', 'Telephone', Icons.phone, widget.tel),

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
                  const SizedBox(
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


}
