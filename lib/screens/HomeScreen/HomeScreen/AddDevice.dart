// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/CustomAppBar.dart';
import 'package:baseus/screens/HomeScreen/HomeScreen/Device.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class AddDevice extends StatefulWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBarCutom(
              description: "Add Device",
              icondata: FontAwesome.search,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon.png",
                    width: 24.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "Add manually",
                    style: TextStyle(
                      fontWeight:
                          FontWeight.normal, /* fontFamily: 'Montserrat-Bold' */
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Device()),
                      );
                    },
                    icon: Icon(
                      Entypo.right_open,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 90),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.65,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: RippleAnimation(
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('assets/images/logo2.png'),
                        backgroundColor: Colors.white,
                      ),
                      color: Color.fromARGB(255, 203, 203, 203),
                      delay: Duration(milliseconds: 600),
                      repeat: true,
                      minRadius: 90,
                      ripplesCount: 3,
                      duration: Duration(milliseconds: 3 * 600),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 8.45,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Searching for device...",
                      style: TextStyle(
                        fontFamily: 'Montserrat-Bold',
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
