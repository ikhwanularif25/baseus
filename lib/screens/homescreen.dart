import 'package:baseus/components/CarauselSlider.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double avatarRadius = screenWidth * 0.08;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: AssetImage("assets/images/foto1.jpg"),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Davi's Baseus",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              height: 1,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Text(
                        "Limau Manis",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                          fontFamily: 'sen',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesome.bell,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              child: CarouselWithImages(),
            ),
          ],
        ),
      ),
    );
  }
}
