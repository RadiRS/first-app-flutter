import 'package:flutter/material.dart';
import 'package:first_app/pages/choose_location.dart';
import 'package:first_app/pages/loading.dart';
import 'package:first_app/pages/home.dart';

void main() {
  runApp(MaterialApp(
    // home: Home(), // cant use because conflict with intial routes, instate use a initialRoute to change default route
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
