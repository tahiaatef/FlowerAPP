// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_6/shared/colors.dart';
import 'package:flutter_application_6/shared/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.from(alpha: 0, red: 0, green: 0, blue: 0),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 64,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: consttextfile.copyWith(
                  hintText: "Enter your Email",
                ),
              ),
              SizedBox(
                height: 33,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: consttextfile.copyWith(
                  hintText: "Enter your Password",
                ),
              ),
              SizedBox(
                height: 33,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text(
                  "sign in",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(fontSize: 19)),
                  TextButton(
                    onPressed: () {},
                    child:
                        Text('Sign Up', style: TextStyle(color: Colors.black,fontSize: 18 , fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
