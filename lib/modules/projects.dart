import 'package:flutter/material.dart';
import 'package:devfolio/model/cardwidget.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return DesktopProject();
      } else {
        return MobileProject();
      }
    });
  }
}

class DesktopProject extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20, left: 40, bottom: 20),
            child: Text(
              'Projects 📱',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Expanded(
                  child: CardWidget(
                    link: 'https://github.com/Snehal-Singh174/CoDy_GiRlS',
                    icon: Icons.book_outlined,
                    title: 'Code Warriors',
                    description:
                        'An E-learning App for tech community to learn new technologies, courses, materials, quiz and personal mentor support',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CardWidget(
                    link: 'https://github.com/Snehal-Flutter/Coruscate-Task',
                    icon: Icons.book_outlined,
                    title: 'Flutter Task',
                    description:
                        'A Flutter App which include implementation of Shared Preferences, Getx, Retrofit, Sembast, Kiwi and many more...',
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
                  child: CardWidget(
                    link:
                        'https://github.com/Snehal-Singh174/Cricket-Chirps-Prediction',
                    icon: Icons.book_outlined,
                    title: 'Cricket Chirps Prediction',
                    description:
                        'A ML Project in which cricket chirps are predicted using Linear Regression, Decision Tree and Random Forest Algorithm',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CardWidget(
                      link:
                          'https://github.com/Snehal-Singh174/Emotion-Detection',
                      icon: Icons.book_outlined,
                      title: 'Emotion Detection',
                      description:
                          'Facial emotion recognition is the process of detecting human emotions from facial expressions.'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MobileProject extends StatelessWidget {

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
            'Projects 📱',
             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CardWidget(
        link: 'https://github.com/Snehal-Singh174/CoDy_GiRlS',
        icon: Icons.book_outlined,
        title: 'Code Warriors',
        description:
            'An E-learning App for tech community to learn new technologies, courses, materials, quiz and personal mentor support',
      ),
      SizedBox(
        height: 20,
      ),
      CardWidget(
        link: 'https://github.com/Snehal-Flutter/Coruscate-Task',
        icon: Icons.book_outlined,
        title: 'Flutter Task',
        description:
            'A Flutter App which include implementation of Shared Preferences, Getx, Retrofit, Sembast, Kiwi and many more...',
      ),
      SizedBox(
        height: 20,
      ),
      CardWidget(
        link:
            'https://github.com/Snehal-Singh174/Cricket-Chirps-Prediction',
        icon: Icons.book_outlined,
        title: 'Cricket Chirps Prediction',
        description:
            'A ML Project in which cricket chirps are predicted using Linear Regression, Decision Tree and Random Forest Algorithm',
      ),
      SizedBox(
        height: 20,
      ),
      CardWidget(
          link: 'https://github.com/Snehal-Singh174/Emotion-Detection',
          icon: Icons.book_outlined,
          title: 'Emotion Detection',
          description:
              'Facial emotion recognition is the process of detecting human emotions from facial expressions.'),
    ],
        ),
      );
  }
}
