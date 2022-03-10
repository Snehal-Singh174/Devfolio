import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopAbout();
      } else {
        return MobileAbout();
      }
    });
  }
}

class DesktopAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        constraints: BoxConstraints(maxWidth: 1200),
        child: Row(
    children: [
      Expanded(
        child: Container(
          child: Image.asset('assets/about.png'),
        ),
      ),
      Column(
        children: [
          Text(
            'About Me 👧 ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'I\'m an App Developer who always try to learn new things \nand helping the tech. community in exploring the technologies.!!',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.android,
                    size: 40,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.python,
                    size: 40,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.html5,
                    size: 40,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.js,
                    size: 40,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    ],
        ),
      );
  }
}

class MobileAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
    children: [
      Text(
        'About Me 👧 ',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'I\'m an App Developer who always try to learn new things \nand helping the tech. community in exploring the technologies.!!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(
                FontAwesomeIcons.android,
                size: 40,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.python,
                size: 40,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.html5,
                size: 40,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.js,
                size: 40,
              ),
              onPressed: () {}),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        child: Image.asset('assets/about.png'),
      ),
    ],
        ),
      );
  }
}
