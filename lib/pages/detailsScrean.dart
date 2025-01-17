// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/products.dart';
import 'package:flutter_application_6/pages/home.dart';
import 'package:flutter_application_6/shared/colors.dart';

class DetailsScrean extends StatefulWidget {
  Item product;
  DetailsScrean({super.key, 
    required this.product,
  });

  @override
  State<DetailsScrean> createState() => _DetailsScreanState();
}

class _DetailsScreanState extends State<DetailsScrean> {
  bool isshowmore = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              );
            },
          ),
          backgroundColor: appbarGreen,
          title: Text(
            "Details Screan",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_basket_rounded),
                      color: Colors.white,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 242, 173, 120),
                            shape: BoxShape.circle),
                        child: Text(
                          "8",
                          style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 128, 73, 18)),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text("\$ 128",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Container(
                  margin: EdgeInsets.all(20),
                  width: 900,
                  height: 300,
                  child: Image.asset(
                    widget.product.imgPath,
                    fit: BoxFit.cover,
                  )),
            ),
            Text("\$ ${widget.product.price}",
                style: TextStyle(
                    color: appbarGreen,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 16,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: appbarGreen),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "new",
                  style: TextStyle(color: appbarGreen, fontSize: 15),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 191, 0),
                    size: 26,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 191, 0),
                    size: 26,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 191, 0),
                    size: 26,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 191, 0),
                    size: 26,
                  ),
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 255, 191, 0),
                    size: 26,
                  ),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              Row(children: [
                Icon(
                  Icons.edit_location,
                  color: appbarGreen,
                  size: 26,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  widget.product.location,
                  style: TextStyle(color: appbarGreen, fontSize: 20),
                )
              ]),
            ]),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: 330,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 22, color: appbarGreen),
                  textAlign: TextAlign.start,
                )),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Roses are not only admired for their appearance but also for their role in expressing feelings. They are commonly given as gifts on special occasions like birthdays, anniversaries, and Valentine’s Day In gardens, roses add elegance and charm, attracting butterflies and bees, making the environment more vibrant. Truly, roses are a timeless symbol of beauty and love. 🌹",
                style: TextStyle(fontSize: 18, color: maron),
                maxLines: isshowmore ? 3 : null,
                overflow: TextOverflow.fade,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshowmore = !isshowmore;
                  });
                },
                child: Text(isshowmore ? "Show more" : "Show less",
                    style: TextStyle(color: appbarGreen, fontSize: 20)))
          ]),
        ),
      ),
    );
  }
}
