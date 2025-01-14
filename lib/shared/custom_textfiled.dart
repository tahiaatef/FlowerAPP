


// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Mytextfiled extends StatelessWidget {
  final TextInputType textinputtype;
  final bool obsuretext;
  final String hinttext;

  const Mytextfiled({ 
    required this.textinputtype, 
    required this.obsuretext,
    required this.hinttext
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
                  keyboardType: textinputtype,
                  obscureText: obsuretext,
                  decoration: InputDecoration(
                    hintText: hinttext ,
                    // To delete borders
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    // fillColor: Colors.red,
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                  ));
  }
}