
import 'package:flutter/material.dart';
import 'package:flutter_aplication1/login/loginView.controller.dart';
import 'package:get/get.dart';

class PasswordField extends GetView<LoginController> {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordInput,
      decoration: const InputDecoration(hintText: 'Senha'),
      );
  }
}