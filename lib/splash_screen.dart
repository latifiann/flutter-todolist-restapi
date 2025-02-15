import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restapi/utils/router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(height: 100, width: 100, child: FlutterLogo()),
      ),
    );
  }

  void navigate() {
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      context.router.replace(const LoginRoute());
    });
  }
}
