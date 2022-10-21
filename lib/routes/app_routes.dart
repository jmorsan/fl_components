

import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/avatar_screen.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

static const initialRoute = 'home';

static final menuOption = <MenuOption>[
  //TODO: borrar home
  MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
  MenuOption(route: 'listview1', icon: Icons.list, name: 'List View 1', screen: const ListView1Screen()),
  MenuOption(route: 'listview2', icon: Icons.list, name: 'List View 2', screen: const ListView2Screen()),
  MenuOption(route: 'alert', icon: Icons.alarm, name: 'Alertas - Alerts', screen: const AlertScreen()),
  MenuOption(route: 'card', icon: Icons.credit_card, name: 'Cartas - Cards', screen: const CardScreen()),
  MenuOption(route: 'avatar', icon: Icons.people, name: 'Avatar - Avatars', screen: const AvatarScreen()),
  MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Container', screen: const AnimatedScreen()),
  MenuOption(route: 'inputs', icon: Icons.input_rounded, name: 'Formulario', screen: const InputsScreen()),

];

static Map<String, Widget Function(BuildContext)> getAppRoutes(){
   Map<String, Widget Function(BuildContext)>appRoutes = {};
   appRoutes.addAll({ 'home':(BuildContext context) =>  const HomeScreen() });

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