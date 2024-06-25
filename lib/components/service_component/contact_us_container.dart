import 'package:baseus/components/service_component/contac_us_item.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              ContactUsItem(),
              ContactUsItem(
                iconlogo: FontAwesome.mail,
                title: "Feedback",
                subtitle: "Click to fill in the form",
              ),
              ContactUsItem(
                iconlogo: Icons.phone_in_talk_outlined,
                title: "Tel",
                subtitle: "+18002208056\n10:00-18:00 Mon-Fri UTC-5",
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 10,
            child: Image.asset(
              'assets/images/maskot.png',
              height: 160.0, // Sesuaikan ukuran gambar maskot
              width: 160.0,
            ),
          ),
        ],
      ),
    );
  }
}
