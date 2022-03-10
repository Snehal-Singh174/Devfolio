import 'package:flutter/material.dart';
import 'package:devfolio/modules/header.dart';
import 'package:devfolio/modules/about_me.dart';
import 'package:devfolio/modules/achivements.dart';
import 'package:devfolio/modules/contact.dart';
import 'package:devfolio/modules/projects.dart';
import 'package:devfolio/modules/navbar.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  var themeState = 'light';
  changeTheme() {
    Get.isDarkMode ? themeState = 'light' : themeState = 'dark';
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
  
  final ScrollController scrollController  = ScrollController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: Colors.black,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '< ',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Snehal Singh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Princess_Sofia',
                                color: Colors.blue[400],
                                fontSize: 30)),
                        TextSpan(
                          text: ' />',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.moon),
                      onPressed: changeTheme),
                ],
              ),
            )
          : null,
      endDrawer: MediaQuery.of(context).size.width < 800
          ? Drawer(
              child: Menu(scrollController),
            )
          : null,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Container(
          child: Column(
            children: [
              NavBar(scrollController),
              Header(),
              AboutMe(),
              Projects(),
              SizedBox(
                height: 30,
              ),
              Achievement(),
              Contact(),
              Container(
                child: Text(
                  'Made with ❤️ by Snehal Singh',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
