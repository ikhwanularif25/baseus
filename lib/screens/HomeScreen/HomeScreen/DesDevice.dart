// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/CustomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class DesDevice extends StatelessWidget {
  const DesDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarCutom(
              icondata: FontAwesome.question_circle_o,
              description: 'Add Bowie M2+',
            ),
            Container(
              margin: const EdgeInsets.all(22),
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 1.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    image: AssetImage('assets/images/BowieM2.gif'),
                    fit: BoxFit.cover),
                color: Colors.grey[300],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Take the earbuds out of the case together",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "2. Place earbuds close to smartphone",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
