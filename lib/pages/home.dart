// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_6/shared/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  get padding => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  IconButton(onPressed: () {}, 
                  icon: Icon(Icons.shopping_basket_rounded),
                  color: Colors.white,
                  ),
                    Container(
                      child: Text(
                        "8",
                        style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 128, 73, 18)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 173, 120),
                          shape: BoxShape.circle)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$128" , style: TextStyle(color: Colors.white,fontSize:18)),
                
              )
            ],
          )
        ],
      ),
    ));
  }
}
