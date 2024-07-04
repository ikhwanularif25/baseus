// main.dart
import 'package:baseus/screens/HomeScreen/HomeScreen/AddDevice.dart';
import 'package:baseus/screens/HomeScreen/HomeScreen/Device.dart';
import 'package:baseus/screens/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.key,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(243, 244, 248, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        '/HomeScreen': (context) => HomePage(),
        '/add_device': (context) => AddDevice(),
        '/device': (context) => Device(),
      },
    );
  }
}
