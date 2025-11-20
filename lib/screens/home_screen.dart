import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/data/candi_data.dart';
import 'package:wisata_candi_putrifathonah/models/candi.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ToDO: 1. Buat appbar dengan judul widget candi
      appBar: AppBar(title: Text('Wisata Candi'),),

      // TODO: 2 Buat Body dengan gridview.builder
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            Candi candi = candiList[index];
            return ItemCard (candi: candi);
          }
      ),
      // Todo: 3 Buat itemcard sebagai return value dari gridview.builder
    );
  }
}
