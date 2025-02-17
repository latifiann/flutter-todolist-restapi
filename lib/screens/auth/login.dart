import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restapi/styles/colors.dart';
import 'package:flutter_restapi/widgets/button.dart';
import 'package:flutter_restapi/widgets/text_field.dart';

import '../../utils/router.gr.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  customTextField(
                      title: 'Email',
                      controller: _email,
                      hint: 'Enter your valid email',
                      obscureText: false),
                  customTextField(
                    title: 'Password',
                    controller: _password,
                    hint: 'Enter your password',
                    obscureText: true,
                  ),
                  customButton(
                    text: 'Login',
                    tap: () {},
                    context: context,
                    status: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(style: TextStyle(color: black), children: [
                    TextSpan(text: "Don't have an account? "),
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.router.replace(RegisterRoute());
                          }),
                    TextSpan(text: ' here')
                  ]))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
