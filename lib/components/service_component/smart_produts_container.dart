import 'package:baseus/components/service_component/smart_produts_item.dart';
import 'package:flutter/material.dart';

List gambar = [
  'assets/images/produk/produk1.jpg',
  'assets/images/produk/produk2.jpg',
  'assets/images/produk/produk3.jpg',
  'assets/images/produk/produk4.jpg',
  'assets/images/produk/produk5.jpg',
  'assets/images/produk/produk6.jpg',
];

List nama = [
  "Bowie M3",
  "Bowie M2s",
  "Bowie M2",
  "Bowie E8",
  "Bowie E3",
  "Bowie H1",
];

class SmartProductContainer extends StatelessWidget {
  const SmartProductContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: GridView.builder(
            itemCount: nama.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return SmartProductsItem(
                gambarproduk: gambar[index],
                namaproduk: nama[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
      ],
    );
  }
}
