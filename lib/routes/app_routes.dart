

import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/avatar.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

static const initialRoute = 'home';

static final menuOption = <MenuOption>[
  //TODO: borrar home
  MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
  MenuOption(route: 'listview1', icon: Icons.home, name: 'List View 1', screen: const ListView1Screen()),
  MenuOption(route: 'listview2', icon: Icons.home, name: 'List View 2', screen: const ListView2Screen()),
  MenuOption(route: 'alert', icon: Icons.home, name: 'Alertas - Alerts', screen: const AlertScreen()),
  MenuOption(route: 'card', icon: Icons.home, name: 'Cartas - Cards', screen: const CardScreen()),
  MenuOption(route: 'avatar', icon: Icons.home, name: 'Avatar - Avatars', screen: const AvatarScreen()),

];

static Map<String, Widget Function(BuildContext)> getAppRoutes(){
   Map<String, Widget Function(BuildContext)>appRoutes = {};

   for (final option in menuOption) {
     appRoutes.addAll({ option.route:(BuildContext context) =>  option.screen });
   }


  return appRoutes;
}
/*
static  Map<String, Widget Function(BuildContext)> routes = {
  
  'home':(BuildContext context) => const HomeScreen(),
  'listview1':(BuildContext context) => const ListView1Screen(),
  'listview2':(BuildContext context) => const ListView2Screen(),
  'alert':(BuildContext context) => const AlertScreen(),
  'card':(BuildContext context) => const ListView1Screen(),
};
*/
static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context)=> const AlertScreen());
}
      

}