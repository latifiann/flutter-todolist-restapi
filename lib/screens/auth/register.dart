import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_restapi/styles/colors.dart';
import 'package:flutter_restapi/utils/router.gr.dart';
import 'package:flutter_restapi/widgets/button.dart';
import 'package:flutter_restapi/widgets/text_field.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  @override
  void dispose() {
    _email.clear();
    _password.clear();
    _firstName.clear();
    _lastName.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  customTextField(
                      title: 'First Name',
                      controller: _firstName,
                      hint: 'Enter yout first name',
                      obscureText: false),
                  customTextField(
                      title: 'Last Name',
                      controller: _lastName,
                      hint: 'Enter your last name',
                      obscureText: false),
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
                    text: 'Register',
                    tap: () {},
                    context: context,
                    status: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(style: TextStyle(color: black), children: [
                    TextSpan(text: "Already have an account? "),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.router.replace(LoginRoute());
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
