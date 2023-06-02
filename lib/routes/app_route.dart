import 'package:aba_bank_app/notification/notification_page.dart';
import 'package:aba_bank_app/views/home/quick_action.dart';
import 'package:flutter/material.dart';

import '../views/main_page.dart';

Route<dynamic>? AppRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/profile':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/notification':
      final routeArguments = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => NotificationPage(
          routeArguments: routeArguments,
        ),
      );
    case '/quick_transfer':
      final titleDescription = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => QuickAction(
          routeArguments: titleDescription,
        ),
      );
    case '/quick_payment':
      final titleDescription = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => QuickAction(
          routeArguments: titleDescription,
        ),
      );
    default:
      return null;
  }
}
