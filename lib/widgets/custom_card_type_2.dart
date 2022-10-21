import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imagenUrl;
  final String? name;

  const CustomCardType2({
    super.key,
    required this.imagenUrl,
    this.name,
    });

  

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      elevation: 10,
      shadowColor: Colors.amber.withOpacity(0.9),
      child: Column(
        children:  [
            FadeInImage(
              image: NetworkImage(imagenUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
          
            Container(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:  Text(name ?? 'Perrete'),
            ),
          
        ]
      ),
    );
  }
}