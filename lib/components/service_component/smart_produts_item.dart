import 'package:flutter/material.dart';

class SmartProductsItem extends StatelessWidget {
  const SmartProductsItem({
    super.key,
    this.gambarproduk,
    this.namaproduk,
  });

  final String? gambarproduk;
  final String? namaproduk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            // color: Colors.blue,
            ),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    gambarproduk ?? 'assets/images/produk/produk1.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                    35.0), // Membuat gambar berbentuk lingkaran
              ),
            ),
            const SizedBox(height: 8.0), // Jarak antara gambar dan teks
            Text(
              namaproduk ?? "Bowie M3",
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center, // Teks berada di tengah
            ),
          ],
        ),
      ),
    );
  }
}
