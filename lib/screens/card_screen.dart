
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),

        children: const  [
        
          CustomCardType1(),
          
          SizedBox(height: 20),

          CustomCardType2(imagenUrl: 'https://okdiario.com/img/2019/06/01/doberman-893931_1920-1-1.jpg',name: 'Doberman',),

          SizedBox(height: 20),

          CustomCardType2(imagenUrl: 'https://t1.ea.ltmcdn.com/es/posts/0/4/1/2_las_mandibulas_del_pitbull_se_bloquean_al_morder_21140_1_600.jpg',name: 'Pitbull'),

          SizedBox(height:20),

          CustomCardType2(imagenUrl: 'https://misanimales.com/wp-content/uploads/2017/02/bull-terrier.jpg',name: 'Bullterrier'),

          SizedBox(height: 20),

          CustomCardType2(imagenUrl:'https://www.elmundodelperro.net/fotos/91/2279_Elduquedeoljomaro.jpg',name: 'Dogo Argentino'),

          SizedBox(height: 100),



         ]
      ),
    );
  }
}

