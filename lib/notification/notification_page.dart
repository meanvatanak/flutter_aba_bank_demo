import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({
    Key? key,
    required this.routeArguments,
  }) : super(key: key);

  final Map<String, dynamic> routeArguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification page")),
      body: Center(
        child: Text("Your message is ${routeArguments['message']}"),
      ),
    );
  }
}
