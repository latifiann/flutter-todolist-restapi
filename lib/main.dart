import 'package:flutter/material.dart';
import 'package:flutter_restapi/styles/colors.dart';
import 'package:flutter_restapi/utils/router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: primaryColor,
              titleTextStyle: TextStyle(
                  color: white, fontSize: 20, fontWeight: FontWeight.bold)),
          primaryColor: primaryColor),
      routerConfig: _appRouter.config(),
    );
  }
}
