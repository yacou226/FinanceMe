import 'package:finance_me/Pages/Auth/LoginPage.dart';
import 'package:finance_me/Pages/intro_pages/page_one.dart';
import 'package:finance_me/Pages/intro_pages/page_tree.dart';
import 'package:finance_me/Pages/intro_pages/page_two.dart';
import 'package:flutter/material.dart';

import '../models/Onboarding_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: const [PageOne(), PageTwo(), PageTree()],
            ),
            Container(
              alignment: const Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Skip POur passer directer au dernier slide
                  TextButton(
                  
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text(
                        "Ignorer",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),

                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                  ),
                  onLastPage
                      ?

                      //Button Done pour passer a la page de connexion
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 73, 10, 115))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                            controller.nextPage(
                                duration: const Duration(microseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Connection",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      :

                      //Button Next pour passer au slide suivant
                      TextButton(
                         
                          onPressed: () {
                            controller.nextPage(
                                duration: const Duration(microseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Suivant",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
