import 'package:aba_bank_app/routes/app_route.dart';
import 'package:aba_bank_app/utilities/constants.dart';
import 'package:aba_bank_app/views/main_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      onUnknownRoute: AppRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          brightness: Brightness.light,
          primary: primaryColor,
          secondary: secondaryColor,
          error: redColor,
        )
      ),
    );
  }
}
