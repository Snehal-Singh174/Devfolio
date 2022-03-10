import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  final ScrollController controller;
  NavBar(this.controller);
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopNavbar(this.controller);
      } else {
        return MobileTopNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  final ScrollController controller;

  DesktopNavbar(this.controller);
  
  var themeState = 'light';
  changeTheme() {
    Get.isDarkMode ? themeState = 'light' : themeState = 'dark';
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '<',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Snehal Singh',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Princess_Sofia',
                              color: Colors.blue[400],
                              fontSize: 30)),
                    ],
                  ),
                ),
                Text(
                  ' />',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: ()  {
                    controller.animateTo(
                      500,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    'About me',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: ()  {
                    controller.animateTo(
                      800,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    'Projects',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    controller.animateTo(
                      1300,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    'Work Experience',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: ()  {
                    controller.animateTo(
                      1900,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                        //color: Colors.black,
                        ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.moon),
                  onPressed: changeTheme,
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileTopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Menu extends StatelessWidget {
  final ScrollController controller;
  Menu(this.controller);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.transparent,
        alignment: Alignment.topRight,
        child: ListView(
          children: [
            ListTile(
              title: GestureDetector(
                onTap: () async {
                  controller.animateTo(
                     650,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                  Navigator.pop(context);
                },
                child: Text(
                  'About me',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(
                Icons.person,
                size: 20,
              ),
            ),
            ListTile(
                title: GestureDetector(
                  onTap: () async {
                    controller.animateTo(
                      1200,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      //color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                leading: Icon(Icons.book_outlined)),
            ListTile(
              title: GestureDetector(
                onTap: () async {
                  controller.animateTo(
                    1900,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                  Navigator.pop(context);
                },
                child: Text(
                  'Work Experience',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(Icons.work_outline),
            ),
            ListTile(
              title: GestureDetector(
                onTap: () async {
                  controller.animateTo(
                    2600,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                  Navigator.pop(context);
                },
                child: Text(
                  'Contact Me',
                  style: TextStyle(
                    //color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              leading: Icon(Icons.contact_mail),
            )
          ],
        ),
      ),
    );
  }
}
