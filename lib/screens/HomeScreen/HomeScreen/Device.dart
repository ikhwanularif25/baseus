// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/CustomAppBar.dart';
import 'package:baseus/components/boxcontainer.dart';
import 'package:baseus/screens/HomeScreen/HomeScreen/twspage.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Device extends StatefulWidget {
  const Device({Key? key}) : super(key: key);

  @override
  State<Device> createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarCutom(
              icondata: FontAwesome5.search,
              description: 'Add Device',
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Text(
                "Earphone",
                style: TextStyle(
                  fontFamily: 'Montserrat-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box(
                        imagePath: 'assets/images/earphone1.1.png',
                        series: 'TWS',
                        destinationPage: TWSPage(),
                      ),
                      box(
                        imagePath: 'assets/images/headset1.jpg',
                        series: 'Headset',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        box(
                          imagePath: 'assets/images/neck1.jpg',
                          series: 'Neck Earphone',
                        ),
                        box(
                          imagePath: 'assets/images/wear1.png',
                          series: 'Wear speaker',
                        ),
                      ]),
                ],
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Text(
                  "Smart Clean",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Row(
                children: [
                  box(
                    // imagePath: '',
                    series: 'Smart Clean',
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Text(
                  "Intelligent Office",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        box(),
                        box(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        box(),
                        box(),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        box(),
                      ],
                    )
                  ],
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: Text(
                  "Smart Vechile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [box(), box()],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        box(),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
