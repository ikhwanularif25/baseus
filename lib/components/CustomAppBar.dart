// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AppBarCutom extends StatelessWidget {
  const AppBarCutom({
    super.key,
    this.icondata,
    this.description,
  });

  final IconData? icondata;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24.0,
            ),
          ),
          Spacer(),
          Center(
            child: Text(
              description ?? 'null',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Spacer(),
          if (icondata != null)
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container()),
                );
              },
              icon: Icon(
                icondata,
                size: 22.0,
              ),
            ),
        ],
      ),
    );
  }
}
