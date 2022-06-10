import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/png/background.jpeg"),
                  fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/png/rtalogo.png',
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.5,
              ),

              SizedBox(height: 20,),
              Text('My Reef Tank',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Full Tank Shots',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Articles',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Database',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Instagram',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Shop',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text('Settings',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
