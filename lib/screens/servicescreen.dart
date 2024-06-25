import 'package:baseus/components/service_component/contact_us_container.dart';
import 'package:baseus/components/service_component/help_center_container.dart';
import 'package:baseus/components/service_component/service_name.dart';
import 'package:baseus/components/service_component/smart_produts_container.dart';
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
        title: const Text(
          "Service",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceName(
                judul: "Help Center",
              ),
              HelpCenterContainer(),
              ServiceName(),
              SmartProductContainer(),
              Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              ContactUsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
