import 'package:baseus/components/CarauselSlider.dart';
import 'package:baseus/screens/HomeScreen/HomeScreen/AddDevice.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        Widget page;
        switch (settings.name) {
          case '/':
            page = HomeContent();
            break;
          case '/add_device':
            page = AddDevice();
            break;
          default:
            page = HomeContent();
        }
        return MaterialPageRoute(builder: (context) => page);
      },
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double avatarRadius = screenWidth * 0.08;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
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
                              fontSize: 18.0,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              height: 1,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_right,
                            size: 22.0,
                          ),
                        ],
                      ),
                      Text(
                        "Limau Manis",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
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
            const SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Device",
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Montserrat-Bold',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundColor: Color.fromARGB(255, 228, 228, 228),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey[350],
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/add_device');
                          },
                          icon: Icon(
                            Entypo.plus,
                            size: 30.0,
                            color: Colors.yellow,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Add Device",
                    style: TextStyle(
                      fontFamily: 'Montserrrat-Bold',
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
