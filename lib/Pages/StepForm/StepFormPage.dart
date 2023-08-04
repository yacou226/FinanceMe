import 'package:finance_me/Pages/StepForm/CongratulationPage.dart';
import 'package:finance_me/Pages/StepForm/Step1.dart';
import 'package:finance_me/Pages/StepForm/Step2.dart';
import 'package:finance_me/Pages/StepForm/Step3.dart';
import 'package:flutter/material.dart';

class StepFormPage extends StatefulWidget {
  const StepFormPage({super.key});

  @override
  State<StepFormPage> createState() => _StepFormPageState();
}

class _StepFormPageState extends State<StepFormPage> {
  bool onLastPage = false;
  TextEditingController firstname = TextEditingController();
  TextEditingController age = TextEditingController();
  int position = 0;
  final PageController _controller = PageController();
  
  Color currentColor = Colors.black;

  @override
  void initState() {
    super.initState();
    // Show the AlertDialog when the widget is started
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showAlertDialog();
    });
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Information',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 44, 10, 108)),
          ),
          content: const Text(
              "Avant de remplir le formulaire, assurez-vous de lire attentivement toutes les instructions et de fournir toutes les informations requises. Si possible, demandez à quelqu'un d'autre de relire votre demande pour vous assurer qu'elle est claire et complète.\n N'oubliez pas que les critères d'admissibilité et les exigences peuvent varier selon le programme de financement, alors assurez-vous de bien les comprendre avant de soumettre votre demande. Bonne chance dans votre recherche de financement ! "),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Refuser',
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
              child: const Text('Accepter'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informations supplementaires',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: MainStepper(context),
    );
  }

  SafeArea MainStepper(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: position >= 0
                                ? Color.fromARGB(255, 73, 10, 115)
                                : Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0))),
                        child: Center(
                            child: Text(
                          '1',
                          style: TextStyle(
                              color:
                                  position >= 0 ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        )),
                      ),
                      Container(
                        color: position >= 1
                            ? Color.fromARGB(255, 73, 10, 115)
                            : Colors.grey,
                        height: 5.0,
                        width: 50,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: position >= 1
                                ? Color.fromARGB(255, 73, 10, 115)
                                : Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50.0))),
                        child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: position >= 1
                                  ? Color.fromARGB(255, 248, 248, 248)
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: position >= 2
                            ? Color.fromARGB(255, 73, 10, 115)
                            : Colors.grey,
                        height: 5.0,
                        width: 50,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: position >= 2
                                ? Color.fromARGB(255, 73, 10, 115)
                                : Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 18.0,
                              color:
                                  position >= 2 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: position >= 3
                            ? Color.fromARGB(255, 73, 10, 115)
                            : Colors.grey,
                        height: 5.0,
                        width: 50,
                      )
                    ],
                  ),
                  Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                        color: position == 3
                            ? const Color.fromARGB(255, 73, 10, 115)
                            : Colors.grey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0))),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: position == 3 ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    position = index;
                    onLastPage = (index == 3);
                    print(position);
                  });
                },
                children:  [
                  StepOnePage(testController: firstname,),
                  StepTwoPage(testController2: age,),
                  StepTree(),
                  const CongratulationPage(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                position >= 1
                    ? Container(
                        width: 110.0,
                        padding: EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: Color.fromARGB(255, 73, 10, 115),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            _controller.previousPage(
                                duration: const Duration(microseconds: 10),
                                curve: Curves.bounceOut);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_left_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                'Précédent',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ))
                    : Container(),
                Container(
                    width: 140,
                    padding: EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Color.fromARGB(255, 73, 10, 115),
                    ),
                    child: onLastPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(microseconds: 10),
                                  curve: Curves.bounceInOut);
                                  print(firstname.text);
                                  print(age.text);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tableau de bord',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(microseconds: 10),
                                  curve: Curves.bounceInOut);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Continuer',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ],
                            ),
                          )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
