// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_6/model/products.dart';
import 'package:flutter_application_6/shared/colors.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/imgs/drawerbg.jpg"),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundImage:
                    AssetImage("assets/imgs/photo_2022-03-07_18-04-47.jpg"),
              ),
              accountName: Text("Sahil"),
              accountEmail: Text("sahil@.com")),
          ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                    color: Color.fromARGB(255, 80, 40, 7),
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.home),
              onTap: () {}),
          ListTile(
              title: Text(
                "My products",
                style: TextStyle(
                    color: Color.fromARGB(255, 80, 40, 7),
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.shopping_basket_rounded),
              onTap: () {}),
          ListTile(
              title: Text(
                "About",
                style: TextStyle(
                    color: Color.fromARGB(255, 80, 40, 7),
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.help_center),
              onTap: () {}),
          ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                    color: Color.fromARGB(255, 80, 40, 7),
                    fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.exit_to_app),
              onTap: () {}),
          Container(
              padding: EdgeInsets.only(top: 300),
              child: Title(
                color: Colors.grey,
                child: Text(
                  "Developed by Tahia Atef © 2024",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 80, 40, 7)),
                ),
              ))
        ]),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.person,
                color: const Color.fromARGB(255, 255, 255, 255),
                size: 30,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_basket_rounded),
                    color: Colors.white,
                  ),
                  Container(
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 128, 73, 18)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 173, 120),
                          shape: BoxShape.circle)),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3/3.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(items[index].imgPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  footer: Container(
                    margin: EdgeInsets.all(30),
                      
                    child: GridTileBar(
                      backgroundColor: Color.fromARGB(255, 78, 47, 21),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 255, 255, 255),
                          iconSize: 30,
                          onPressed: () {},
                          icon: Icon(Icons.add)),
                    
                      leading: Text("\$ ${items[index].price}" , style: TextStyle(color: Colors.white,fontSize: 18),),
                    
                      title: Text(
                        textAlign: TextAlign.center,
                        items[index].name,style: TextStyle(color: const Color.fromARGB(255, 154, 85, 59),fontSize: 18,fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
