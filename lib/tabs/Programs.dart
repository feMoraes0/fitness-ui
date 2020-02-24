import 'package:fitness_flutter/components/DailyTip.dart';
import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/ImageCardWithInternal.dart';
import 'package:fitness_flutter/components/UserTip.dart';
import 'package:fitness_flutter/components/ImageCardWithBasicFooter.dart';
import 'package:fitness_flutter/components/Section.dart';
import 'package:fitness_flutter/components/UserPhoto.dart';
import 'package:fitness_flutter/components/main_card_programs.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: "Easy Start",
      time: "5 min",
      difficult: "Low",
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: "Medium Start",
      time: "10 min",
      difficult: "Medium",
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: "Pro Start",
      time: "25 min",
      difficult: "High",
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  "Programs",
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                  title: "Fat burning",
                  horizontalList: this.generateList(context),
                ),
                Section(
                  title: "Abs Generating",
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      "http://laboralclinica.com.br/wp-content/uploads/2018/01/1447701749564a2cf5862e7.jpg",
                      "Core \nWorkout",
                      "7 min",
                    ),
                    ImageCardWithInternal(
                      "http://laboralclinica.com.br/wp-content/uploads/2018/01/1447701749564a2cf5862e7.jpg",
                      "Core Workout",
                      "7 min",
                    ),
                    ImageCardWithInternal(
                      "http://laboralclinica.com.br/wp-content/uploads/2018/01/1447701749564a2cf5862e7.jpg",
                      "Core Workout",
                      "7 min",
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                  ),
                  child: Column(
                    children: <Widget>[
                      Section(
                        title: "Daily Tips",
                        horizontalList: <Widget>[
                          UserTip(
                              "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                              "User Img"),
                          UserTip(
                              "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                              "User Img"),
                          UserTip(
                              "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                              "User Img"),
                          UserTip(
                              "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                              "User Img"),
                        ],
                      ),
                      Section(
                        horizontalList: <Widget>[
                          DailyTip(),
                          DailyTip(),
                          DailyTip(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
