import 'package:flutter/material.dart';

class DashboardHomePage extends StatefulWidget {
  const DashboardHomePage({super.key});

  @override
  State<DashboardHomePage> createState() => _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Dashboard'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.circle_notifications),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
   
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.only(left: 18),
               child: Column(
                
                 children: [
                   const Text(
                      'Dashboard', textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                           Container(
                  width: 80,
                  height: 5.0,
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(255, 78, 21, 81)),
                ),
                 ],
               ),
             ),
            
             const  SizedBox(height: 15.0,),
             const Padding(
               padding: EdgeInsets.only(left: 18.0),
               child: Text(
                  'Hey, Yacou', 
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
             ),
              const SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130.0,
                  decoration:    const BoxDecoration(
                    color: Color.fromARGB(255, 77, 15, 87),
                    borderRadius:  BorderRadius.all(Radius.circular(10.0)),
                    
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('data',style: TextStyle(color: Colors.white,fontSize: 16.0),
                          
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
         
            ],
          ),
        
      ),
    );
  }
}
