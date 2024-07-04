// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class box extends StatelessWidget {
  const box({
    super.key,
    this.series,
    this.imagePath,
    this.destinationPage,
  });

  final String? series;
  final String? imagePath;
  final Widget? destinationPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (destinationPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationPage!),
          );
        }
      },
      child: Container(
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width / 2.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null)
                Image.asset(
                  imagePath!,
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.fill,
                ),
              const SizedBox(
                height: 10.0,
              ),
              Text(series ?? 'null',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          )),
    );
  }
}
