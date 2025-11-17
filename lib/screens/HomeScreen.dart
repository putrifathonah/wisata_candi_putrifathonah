import 'package:flutter/material.dart';

// stfl --> ini untuk short cut
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1 Buat appbar dengan judul wisata candi
      appBar: AppBar(title: Text('Wisata candi'),),
      // TODO: 2 Buat body dengan GridView.builder
      body: GridView.builder(
        gridDelegate: gridDelegate,
        itemBuilder: itemBuilder),
      // TODO: 3. Buat ItemCard sebagai return value dari GridView.builder

    );
  }
}
