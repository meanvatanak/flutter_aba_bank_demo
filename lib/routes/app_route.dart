import 'package:aba_bank_app/notification/notification_page.dart';
import 'package:aba_bank_app/utilities/constants.dart';
import 'package:aba_bank_app/views/quick_transfer/quick_transfer.dart';
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
              ));
    case '/quick_transfer':
      return MaterialPageRoute(
        builder: (context) => QuickTransfer(
          title: "Quick Transfer",
          description: "Transfer money to your friends",
          icon: Icons.send,
          color: cyanColor,
        ),
      );
    case '/quick_payment':
      return MaterialPageRoute(
        builder: (context) => QuickTransfer(
          title: "Quick Payment",
          description: "Pay your bills",
          icon: Icons.payment,
          color: redColor,
        ),
      );
    default:
      return null;
  }
}
