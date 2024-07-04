import 'package:baseus/screens/myscreen/about_baseus.dart';
import 'package:baseus/screens/myscreen/message_center.dart';
import 'package:baseus/screens/myscreen/setting.dart';
import 'package:flutter/material.dart';
import 'package:baseus/components/my_component/my_items.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class Myscreen extends StatefulWidget {
  const Myscreen({Key? key}) : super(key: key);

  @override
  State<Myscreen> createState() => _MyscreenState();
}

class _MyscreenState extends State<Myscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(
                height: 60.0,
              ),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage("assets/images/foto1.jpg"),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "Davi's Baseus",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "1 Device(s)",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14.0),
                  ),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    MyItems(
                      myteks: "Devices Sharing",
                      myicon: MfgLabs.export_icon,
                      warna: Colors.grey,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageCenter()),
                        );
                      },
                      child: MyItems(
                        myteks: "Message Center",
                        myicon: Icons.notifications_none,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutBaseus()),
                        );
                      },
                      child: MyItems(
                        myteks: "About Baseus",
                        myicon: FontAwesome5.bootstrap,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Setting()),
                        );
                      },
                      child: MyItems(
                        myteks: "Settings",
                        myicon: Typicons.cog_outline,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
