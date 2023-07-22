import 'package:flutter/material.dart';

import '../models/Onboarding_info.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  

@override
void initState() {
    // TODO: implement initState
    super.initState();
  }


  int selectedPageItem = 0;
  bool   buttonpressed =false;
  final PageController _pageController = PageController();

  List<OnboardingInfo> onboardingPage = [
    OnboardingInfo('assets/idee.png', 'Definissez vos idées',
        'Ceci est le première chose à faire'),
    OnboardingInfo('assets/no_money.png', "Manque d'argent",
        'Faites vous financé par des personnes ou organismes de financement partout dans le monde'),
    OnboardingInfo('assets/invest.jpg', 'Mobile Money Transfere',
        "Recever votre font de commerce ou d'activité par Orange Money, Wave, MoovMoney et Mtn money")
  ];




  pageChanged(int pageIndex){
    setState(() {
    selectedPageItem == pageIndex;
    });
  }

  void nextPage(){
    setState(() {
        if (selectedPageItem < onboardingPage.length -1) {
      _pageController.nextPage(duration: const Duration(microseconds: 200), curve: Curves.bounceInOut);
        buttonpressed == false;
      
    }else{
      buttonpressed = !buttonpressed;
    }
    });
  
  }

  String updateString(){
    return (selectedPageItem == onboardingPage.length-1) ? 'Start' : 'Next';
  }

    
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                 onPageChanged: pageChanged,
                itemCount: onboardingPage.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(onboardingPage[index].imageAsset),
                        const SizedBox(
                          height: 32.0,
                        ),
                        Text(
                          onboardingPage[index].title,
                          style: const TextStyle(
                              fontSize: 24.0,
                              color: Color.fromARGB(255, 4, 19, 32),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(
                            onboardingPage[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          
                        ),
                        Text('$index')
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              left: 20.0,
              child: Row(
                children: List.generate(onboardingPage.length, (index) => 
                Container(
                  margin: const  EdgeInsets.only(right: 5.0),
                  width: 10.0,height: 10.0,
                  decoration: const  BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color:  Colors.redAccent,
                  ),
                  )
                
                ),
              ),
            ),
            Positioned(
                right: 20,
                bottom: 20,
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: nextPage,
                  child:  Text(updateString())),
                )),
          ],
        ),
      ),
    );
  }
}
