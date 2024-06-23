// main.dart
import 'package:baseus/screens/initial_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        scaffoldBackgroundColor: Colors.grey[200],
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat-Bold',
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        '/HomeScreen': (context) => HomePage(),
      },
    );
  }
}
