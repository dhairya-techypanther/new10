import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new10/ResultScreen.dart';
import 'package:new10/Styling/AppTheme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 80),
            child: SvgPicture.asset(
              AppTheme.loginImage,
              height: 250,
              width: 200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Verify Your Number',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue.shade200),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'Please Enter Your Mobile Number',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black26),
            ),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
              top: 25,
              bottom: 30,
            ),
            child: Container(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefix: Text('+91   '),
                    prefixStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                    hintText: 'Mobile Number',
                    focusColor: Colors.black26),
              ),
            ),
          ),
          Container(
            width: 260,
            height: 50,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Result()));
              },
              color: Colors.lightBlue.shade200,
              child: Text(
                'Verity',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
              ),),),]),),);
  }
}
