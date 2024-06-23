// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/service_component/help_center_container.dart';
import 'package:baseus/components/service_component/service_name.dart';
import 'package:flutter/material.dart';

class Servicescreen extends StatefulWidget {
  const Servicescreen({Key? key}) : super(key: key);

  @override
  State<Servicescreen> createState() => _ServicescreenState();
}

class _ServicescreenState extends State<Servicescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Service",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          // Tambahkan aksi lain di sini jika diperlukan
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              ServiceName(
                judul: "Help Center",
              ),
              HelpCenterContainer(),
              ServiceName(),
            ],
          ),
        ),
      ),
    );
  }
}
