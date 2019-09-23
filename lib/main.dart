import 'package:fitness_flutter/components/ImageCardWithInternal.dart';
import 'package:flutter/material.dart';

import 'components/ImageCardWithBasicFooter.dart';
import 'components/MainCard.dart';
import 'components/Section.dart';
import 'components/UserPhoto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Programs",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 20.0),
                    ),
                    UserPhoto()
                  ],
                ),
                MainCard(), // MainCard
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
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
