import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:finance_me/Components/TextField.dart';
import 'package:flutter/material.dart';
import 'package:text_area/text_area.dart';

class StepTwoPage extends StatefulWidget {
  final TextEditingController compagnyName;
  final  TextEditingController  companyDescription;
  final Function getCompagnyType;
  final Function getPrice;
      const StepTwoPage({super.key, required this.compagnyName, required this.companyDescription, required this.getCompagnyType, required this.getPrice});

  @override
  State<StepTwoPage> createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {



  static final Map<String, String> genderMap = {
    'eurl': 'unipersonnelle à responsabilité limitée',
    'sarl': 'Société à responsabilité limitée',
    'sasu': 'SASU',
    'sas':'Société par actions simplifiée'
  };

    static final Map<String, String> priceMap = {
    '50000': "50.000 fcfa",
    '10000': '100.000 fcfa',
    '500000': '500.000 fcfa',
    '100000':'1.000.000 fcfa',
    '5000000':'5.000.000 fcfa'
  };

    String _selectedGender = genderMap.keys.first;
    String _selectedPrice = priceMap.keys.first;
      var reasonValidation = true;



     void onGenderSelected(String genderKey) {
    setState(() {
      _selectedGender = genderKey;
      print(_selectedGender);
    });
  }

     void onPriceSelected(String priceKey) {
    setState(() {
      _selectedPrice = priceKey;
      print(_selectedPrice);
    });
  }
  



  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createTextFieldWithIcon('enhtreprise', 'Entrez le nom de votre entreprise', Icons.shop_2_outlined, widget.compagnyName),
            const Padding(
              padding: EdgeInsets.only(left:17.0),
              child: Text("Quel est le type de votre entreprise ?",textAlign: TextAlign.left,style: TextStyle(fontSize: 16.0),),
            ),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: CupertinoRadioChoice(
                selectedColor: Color.fromARGB(208, 65, 5, 137),
                notSelectedColor: Colors.grey.shade500,
                  choices: genderMap,
                  onChange: widget.getCompagnyType,
                  initialKeyValue: _selectedGender),
             ),
              const Padding(
              padding: EdgeInsets.only(left:17.0),
              child: Text("Quel est le montant démandé ?",textAlign: TextAlign.left,style: TextStyle(fontSize: 16.0),),
            ),
            Padding(
               padding: const EdgeInsets.all(15.0),
               child: CupertinoRadioChoice(
                selectedColor: Color.fromARGB(208, 65, 5, 137),
                notSelectedColor: Colors.grey.shade500,
                  choices: priceMap,
                  onChange: widget.getPrice,
                  initialKeyValue: _selectedPrice),
             ),
              const Padding(
              padding: EdgeInsets.only(left:17.0),
              child: Text("Objectif du financement",textAlign: TextAlign.left,style: TextStyle(fontSize: 16.0),),
            ),

             Padding(
               padding: const EdgeInsets.all(15.0),
               child: TextArea(
                      borderRadius: 10,
                      borderColor: const Color(0xFFCFD6FF),
                      textEditingController: widget.companyDescription,
                      suffixIcon: Icons.attach_file_rounded,
                      onSuffixIconPressed: () => {},
                      errorText: 'Please type a reason!',
                       validation: reasonValidation,
                    ),
             ),
            
          ],
        ),
      ),
    );
  }
}

