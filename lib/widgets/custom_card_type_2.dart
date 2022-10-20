import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      elevation: 10,
      child: Column(
        children:  [
          const FadeInImage(
            image: NetworkImage('https://okdiario.com/img/2019/06/01/doberman-893931_1920-1-1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

          Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Perrete Raza Doberman'),
          ),
        ]
      ),
    );
  }
}