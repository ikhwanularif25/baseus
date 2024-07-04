import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class MyItems extends StatelessWidget {
  const MyItems({
    Key? key,
    this.myicon = FontAwesome5.crown,
    this.myteks,
    this.warna = Colors.black,
  }) : super(key: key);

  final String? myteks;
  final IconData myicon;
  final Color? warna;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            myicon,
            size: 20.0,
            color: warna,
          ),
          const SizedBox(
            width: 14.0,
          ),
          Text(
            myteks ?? "text",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: warna,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            size: 24.0,
            color: warna,
          ),
        ],
      ),
    );
  }
}
