import 'package:flutter/material.dart';
import 'package:flutter_restapi/styles/colors.dart';

void showMessages({String? message, BuildContext? context}) {
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text(
      message!,
      style: TextStyle(color: white),
    ),
    backgroundColor: primaryColor,
  ));
}