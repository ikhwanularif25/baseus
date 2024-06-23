import 'package:baseus/components/service_component/help_center_items.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class HelpCenterContainer extends StatelessWidget {
  const HelpCenterContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.0,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Row(
            children: [
              Spacer(),
              HelpCentersItem(
                icon: FontAwesome5.crown,
              ),
              Spacer(),
              HelpCentersItem(
                namaItem: "Anti-lost\nFAQ",
                icon: Typicons.doc_text,
              ),
              Spacer(),
              HelpCentersItem(
                namaItem: "Warranty\nPolicy",
                icon: Octicons.shield,
              ),
              Spacer(),
              HelpCentersItem(
                namaItem: "Pencil",
                icon: LineariconsFree.pencil,
              ),
              Spacer(),
            ],
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
      ],
    );
  }
}
