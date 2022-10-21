import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Perro Destrozao'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.amber[900],
            ),
          )
         
        ],
      ),
      body:  Center(
        
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: const CircleBorder(),
          elevation: 10,
          shadowColor: Colors.amber.withOpacity(0.9),
          child: Column(
            children: const [
              FadeInImage(
                      image: NetworkImage('https://pbs.twimg.com/media/FeQjNVXXgAATE59?format=jpg&name=360x360'),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      width: double.infinity,
                      height: 230,
                      fit: BoxFit.cover,
                      fadeInDuration:  Duration(milliseconds: 300),
              ),
            ],
          ),
        ),
         
      ),
    );
  }
}