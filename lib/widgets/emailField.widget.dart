import 'package:flutter/material.dart';
import 'package:flutter_aplication1/login/loginView.controller.dart';
import 'package:get/get.dart';

class EmailField extends GetView<LoginController> {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    var emailInput = controller.emailInput;
    var textField = TextField(
      controller: emailInput,
      decoration: const InputDecoration(hintText: 'Email'),
      );
    return textField;
  }
}