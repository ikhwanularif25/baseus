import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class HelpCentersItem extends StatelessWidget {
  const HelpCentersItem({
    Key? key,
    this.namaItem,
    this.icon = FontAwesome5.crown, // Ikon default
  }) : super(key: key);

  final String? namaItem;
  final IconData icon; // Properti untuk menentukan ikon

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: Icon(
              icon, // Gunakan properti ikon
              size: 24.0,
              color: Colors.yellow[700],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            namaItem ?? "Accounts\nrelated",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
