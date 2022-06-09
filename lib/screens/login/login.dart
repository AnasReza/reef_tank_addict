import 'package:flutter/material.dart';
import 'package:reef_tank_addict/screens/register/register.dart';

import '../../common/constant.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return LoginState();
  }

}
class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/png/background.jpeg"),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Image.asset(
                    'assets/png/rtalogo.png',
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter email...",
                                hintStyle: TextStyle(
                                    color: Constant.textColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Password',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter password...",
                                hintStyle: TextStyle(
                                    color: Constant.textColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Constant.orangeColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,letterSpacing: 1.5
                              ),
                              textAlign: TextAlign.center,
                            )),
                        const SizedBox(
                          height: 30,
                        ),

                        InkWell(child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'SIGNUP',
                            style:
                            TextStyle(color: Constant.textColor, fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 2.0),textAlign: TextAlign.center,
                          ),
                        ),onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        },),
                        const SizedBox(
                          height: 30,
                        ),

                        InkWell(child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'FORGOT PASSWORD?',
                            style:
                            TextStyle(color: Constant.textColor, fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 2.0),textAlign: TextAlign.center,
                          ),
                        ),onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                        },)

                      ],
                    ),
                  )
                ],
              )),
        ));
  }

}