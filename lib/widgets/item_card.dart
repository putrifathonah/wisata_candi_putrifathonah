import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/models/candi.dart';

class ItemCard extends StatelessWidget {
  // Todo: 1. Deklarasi variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    // Todo 6. implementasi Routing ke DetailScreen
    return Card(
      // Todo 2. Buat Image sebagai anak dari column
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Todo 3 buat Omage sebagai anak dari column
          Expanded(
            // Todo : 7, Implementasi Hero animation
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(candi.imageAsset,
                width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
          ),
          // Todo 4 Buat text sebagai anak dari column
          Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
          child: Text(candi.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
          ),
          // Todo 5 Buat text sebagai anak dari column
          Padding(
              padding: EdgeInsets.only(
                left: 16, bottom: 8),
          child: Text(candi.type,
          style: TextStyle(
            fontSize: 12
          ),),)
        ],
      ),
    );
  }
}


