import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class ContactUsItem extends StatelessWidget {
  const ContactUsItem({
    super.key,
    this.iconlogo = FontAwesome5.headset,
    this.subtitle,
    this.title,
  });

  final String? title;
  final String? subtitle;
  final IconData iconlogo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                child: Icon(
                  iconlogo,
                  size: 24.0,
                  color: Colors.yellow[700],
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "Live Chat",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle ?? "9:00-17:00 Mon-Sun\nUTC+8",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
