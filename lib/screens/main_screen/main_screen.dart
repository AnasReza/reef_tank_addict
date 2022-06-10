import 'package:flutter/material.dart';
import 'package:reef_tank_addict/common/constant.dart';
import 'package:reef_tank_addict/screens/main_screen/home/home.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  Drawer drawer = Drawer(
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
            width: 200,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'My Reef Tank',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Full Tank Shots',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Articles',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Database',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Instagram',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Shop',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Settings',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
  List<Widget> widgetList = [Home()];
  int widgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Constant.blueColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: InkWell(
            child: Image.asset('assets/png/menu.png'),
            onTap: () {
              _key.currentState!.openDrawer();
            },
          ),
        ),
        leadingWidth: 45,
        title: Image.asset(
          'assets/png/rtalogo.png',
          width: 150,
        ),
        centerTitle: true,
      ),
      body: widgetList[widgetIndex],
      drawer: drawer,
    ));
  }
}
