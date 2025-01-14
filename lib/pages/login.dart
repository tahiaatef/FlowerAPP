import 'package:flutter/material.dart';
import 'package:flutter_application_6/shared/custom_textfiled.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              SizedBox(
                height: 64,
              ),
              Mytextfiled(
                textinputtype: TextInputType.emailAddress,
                obsuretext: false,
                hinttext: "Enter Your Email",
              ),
              SizedBox(
                height: 20,
              ),
              Mytextfiled(
                textinputtype: TextInputType.visiblePassword,
                obsuretext: true,
                hinttext: "Enter Your Password",
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
