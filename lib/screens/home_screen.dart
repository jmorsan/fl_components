import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';

import 'screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOption[index].icon , color: AppTheme.primary,),
          title:  Text(AppRoutes.menuOption[index].name),
          onTap: () {
            
            Navigator.pushNamed(context, AppRoutes.menuOption[index].route);

          },
        ), 
        separatorBuilder: ( _ , __ )=>const Divider(), 
        itemCount: AppRoutes.menuOption.length
      )
    );
  }
}