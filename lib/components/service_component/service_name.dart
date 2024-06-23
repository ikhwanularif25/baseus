import 'package:flutter/material.dart';

class ServiceName extends StatelessWidget {
  const ServiceName({
    super.key,
    this.judul,
  });

  final String? judul;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              judul ?? "Smart Products",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "More",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
              ),
            ),
            const Icon(
              Icons.arrow_right_outlined,
              color: Colors.grey,
              size: 20.0,
            ),
          ],
        ),
        const SizedBox(
          height: 18.0,
        ),
      ],
    );
  }
}
