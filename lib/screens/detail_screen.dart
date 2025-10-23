import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          // detail header
         Stack(
           children: [
             Image.asset('images/singosari.jpeg',
             width: double.infinity,
               height: 200,
               fit: BoxFit.cover,
             ),
             // tombol back cutome
             Positioned(
                 top: 30,
                 left: 20,
               child: IconButton(icon: const Icon(Icons.arrow_back),
               onPressed: (){
                 Navigator.pop(context);
               }
               )
             )
           ],
         ) 
        ],
      ),
    );
  }
}