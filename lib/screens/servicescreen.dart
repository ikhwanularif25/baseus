// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:baseus/components/service_component/help_center_container.dart';
import 'package:baseus/components/service_component/service_name.dart';
import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

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
        actions: <Widget>[],
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
              const SizedBox(
              height: 75.0,
              ),
              RippleAnimation(
                child: CircleAvatar(
                  minRadius: 75,
                  maxRadius: 75,
                  backgroundImage: AssetImage("assets/images/foto1.jpg"),
                ),
                color: Colors.grey,
                delay: const Duration(milliseconds: 300),
                repeat: true,
                minRadius: 75,
                ripplesCount: 6,
                duration: const Duration(milliseconds: 6 * 300),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
