import 'package:flutter/material.dart';
import 'package:pencarian_candi/models/candi.dart';
import 'package:pencarian_candi/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  //TODO : 1. Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // TODO : 6. Implementasi routing ke DetailScreen.
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(candi: candi),
          ),
        );
      },
      child: Card(
        // TODO : 2. Tetapkan parameter shape, margin, dan elevation
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO : 3. Buat image sebagai anak dari Column
            Expanded(
                child: Hero(
              tag: candi.imageAsset,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            )),
            //TODO : 4. Buat text sebagai anak dari column
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                candi.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //TODO : 5. Buat text sebagai anak dari column
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                candi.type,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
