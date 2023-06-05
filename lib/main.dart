import 'package:flutter/material.dart';
import 'package:mvvm/models/userModel/user.model.dart';
import 'package:mvvm/view/screens/userScreen/user.screen.dart';
import 'view/screens/homeScreen/home.screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.id,
    routes: {
      HomeScreen.id: (context) => const HomeScreen(),
      UserDetailsScreen.id: (context) =>
          UserDetailsScreen(ModalRoute.of(context)!.settings.arguments as User),
    },
  ));
}


// Router :  https://pub.dev/packages/go_router