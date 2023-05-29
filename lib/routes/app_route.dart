import 'package:aba_bank_app/notification/notification_page.dart';
import 'package:flutter/material.dart';

import '../views/main_page.dart';

Route<dynamic>? AppRoute(RouteSettings settings){
  switch(settings.name){
    case '/':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/profile':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/notification':
      final routeArguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => NotificationPage(
          routeArguments: routeArguments,
        )
      );
    default:
      return null;
  }
}