import 'package:flutter/material.dart';
import 'package:devfolio/model/cardwidget.dart';

class Achievement extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 800) {
        return DesktopWork();
      } else {
        return MobileWork();
      }
    });
  }
}

class DesktopWork extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, left: 40, bottom: 20),
            child: Text(
              'Work Experience 🏆',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: CardWidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'Flutter Trainee',
                      description: 'Coruscate Solution Pvt. Ltd.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: CardWidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'COO',
                      description: 'Code Warriors',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: CardWidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Member',
                        description: 'Google Developer Group'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: CardWidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Research Intern',
                        description: 'Dexterity Global Group'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: CardWidget(
                      link:
                          'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                      icon: Icons.work_outline,
                      title: 'Android Intern',
                      description: 'SvaKatha',
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    child: CardWidget(
                        link:
                            'https://www.linkedin.com/in/snehal-singh-b5119817b/',
                        icon: Icons.work_outline,
                        title: 'Sponsorship Head',
                        description: 'Script Foundation'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Work Experience 🏆',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CardWidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'Flutter Developer Trainee',
            description: 'Coruscate Solution Pvt. Ltd.',
          ),
          SizedBox(
            height: 20,
          ),
          CardWidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'COO',
            description: 'Code Warriors',
          ),
          SizedBox(
            height: 20,
          ),
          CardWidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Member',
              description: 'Google Developer Group'),
          SizedBox(
            height: 20,
          ),
          CardWidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Research Intern',
              description: 'Dexterity Global Group'),
          SizedBox(
            height: 20,
          ),
          CardWidget(
            link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
            icon: Icons.work_outline,
            title: 'Android Intern',
            description: 'SvaKatha',
          ),
          SizedBox(
            height: 20,
          ),
          CardWidget(
              link: 'https://www.linkedin.com/in/snehal-singh-b5119817b/',
              icon: Icons.work_outline,
              title: 'Sponsorship Head',
              description: 'Script Foundation'),
        ],
      ),
    );
  }
}
