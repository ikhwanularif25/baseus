// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DeviceSharing extends StatefulWidget {
  const DeviceSharing({Key? key}) : super(key: key);

  @override
  State<DeviceSharing> createState() => _DeviceSharingState();
}

class _DeviceSharingState extends State<DeviceSharing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
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
