import 'package:fitness_flutter/components/DailyTip.dart';
import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/ImageCardWithInternal.dart';
import 'package:fitness_flutter/components/UserTip.dart';
import 'package:fitness_flutter/components/ImageCardWithBasicFooter.dart';
import 'package:fitness_flutter/components/Section.dart';
import 'package:fitness_flutter/components/UserPhoto.dart';

import 'package:flutter/material.dart';

class Programs extends StatelessWidget {



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
                  horizontalList: <Widget>[
                    ImageCardWithBasicFooter(
                      "https://media-manager.noticiasaominuto.com/1920/naom_5caee2ff2dabd.jpg",
                      "Easy Start",
                      "5 min",
                      "Low",
                    ),
                    ImageCardWithBasicFooter(
                      "https://i.pinimg.com/originals/81/4f/aa/814faa73b363bde76e57e743161438ea.jpg",
                      "Cardio Bit",
                      "8 min",
                      "Medium",
                    ),
                    ImageCardWithBasicFooter(
                      "https://www.treinus.com.br/blog/wp-content/uploads/2018/03/O-que-e-HIIT-Entenda-como-ele-pode-te-ajudar-a-queimar-gordura-e-seus-beneficios.jpg",
                      "Strong Start",
                      "15 min",
                      "Hight",
                    ),
                  ],
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
                            "User Img"
                          ),
                          UserTip(
                            "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                            "User Img"
                          ),
                          UserTip(
                            "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                            "User Img"
                          ),
                          UserTip(
                            "http://keenthemes.com/preview/metronic/theme/assets/pages/media/profile/profile_user.jpg",
                            "User Img"
                          ),
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

class MainCardPrograms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "For You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "8 min",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              )
            ],
          ),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[400].withOpacity(0.95),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width - 40,
      height: (MediaQuery.of(context).size.width - 40) / 2,
      margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://i.pinimg.com/originals/13/78/8f/13788f2a063c363eb55b7c7883e989ad.jpg"),
          fit: BoxFit.fill),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 25.0,
            offset: Offset(8.0, 8.0),
          ),
        ],
      ),
    );
  }
}