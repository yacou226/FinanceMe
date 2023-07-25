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
              onPageChanged: (index){
                setState(() {
                  onLastPage = (index == 2);
                });
              } ,
              children: const [PageOne(), PageTwo(), PageTree()],
            ),
           
            Container(
              alignment: const Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text('skip')),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                  ),
                  onLastPage ?
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
                    }, child:const Text('done'))
                    : 
                    GestureDetector(
                    onTap:(){
                      controller.nextPage(duration: const Duration(microseconds: 200), curve: Curves.easeIn);
                    }, child:const Text('Next'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
