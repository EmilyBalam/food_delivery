import 'package:flutter/material.dart';
import 'package:food_delivery/src/loginP.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => loginP(),
  };
}
