import 'package:flutter/material.dart';
import 'package:flutter_aplication1/login/loginView.controller.dart';
import 'package:get/get.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
    onPressed: () {controller.tryTologin();
    },
    child: const Text('Entrar',
    style: TextStyle(fontSize: 20.0, color: Colors.white),
   ),
   );
  }
}