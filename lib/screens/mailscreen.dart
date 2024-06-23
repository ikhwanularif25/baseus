// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MasilScreen extends StatefulWidget {
  const MasilScreen({Key? key}) : super(key: key);

  @override
  State<MasilScreen> createState() => _MasilScreenState();
}

class _MasilScreenState extends State<MasilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mail"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
