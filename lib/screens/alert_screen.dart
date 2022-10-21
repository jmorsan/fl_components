import 'dart:io';

import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context), 
              child: const Text('Cancelar',style: TextStyle(color: Colors.red),)
            ),

            TextButton(
              onPressed: ()=>Navigator.pop(context), 
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context), 
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child:ElevatedButton(
           
          child:const Padding(
            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child:Text('Mostrar Alerta'),
            
          ), 
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context)
        ) 
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppTheme.primary,
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
        ),
    );
  }
}