import 'package:flutter/material.dart';
import 'package:reef_tank_addict/common/constant.dart';
import 'package:reef_tank_addict/common/widget/filter_button.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 5, right: 5,top: 5),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return FilterButton();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 15,
              child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: Constant.greyGradient,
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'Reef Tank Item name',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Text(
                                  'Reef Tank Item date added',
                                  style: TextStyle(
                                      color: Constant.text2Color, fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,onPressed: () {  },
    child:Center(child: Icon(Icons.add,color: Colors.white,),) ,),);
  }
}
