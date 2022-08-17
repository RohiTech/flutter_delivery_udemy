import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  // NULL SAFETY: ninguna variable debe ser nula

  void goToRegisterPage() {
    Navigator.pushNamed(context!, 'register');
  }
}
