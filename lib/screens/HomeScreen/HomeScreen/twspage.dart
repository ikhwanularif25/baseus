// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/CustomAppBar.dart';
import 'package:baseus/screens/HomeScreen/HomeScreen/DesDevice.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class TWSPage extends StatelessWidget {
  const TWSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarCutom(
              description: 'TWS',
              icondata: FontAwesome5.search,
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Kotak(
                        Series: 'Bowie M2+',
                        ImagePage: 'assets/images/earphone1.1.png',
                        destinationPage: DesDevice(),
                      ),
                      Kotak()
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Kotak(), Kotak()],
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

class Kotak extends StatelessWidget {
  const Kotak({super.key, this.Series, this.ImagePage, this.destinationPage});

  final String? Series;
  final String? ImagePage;
  final Widget? destinationPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (destinationPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationPage!),
          );
        }
      },
      child: Container(
          height: MediaQuery.of(context).size.height / 5.5,
          width: MediaQuery.of(context).size.width / 2.4,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (ImagePage != null)
                Image.asset(
                  ImagePage!,
                  width: 85.0,
                  height: 85.0,
                  fit: BoxFit.fill,
                ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                Series ?? 'null',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          )),
    );
  }
}
