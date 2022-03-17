import 'package:flutter/material.dart';
import 'package:food_delivery/src/food.dart';
import 'package:food_delivery/src/loginP.dart';
import 'package:food_delivery/src/loginPage.dart';
import 'package:food_delivery/src/welcomeP.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginP(),
    'welcome': (BuildContext context) => WelcomeP(),
    'login': (BuildContext context) => LoginPage(),
    'efood': (BuildContext context) => Food(),
  };
}
