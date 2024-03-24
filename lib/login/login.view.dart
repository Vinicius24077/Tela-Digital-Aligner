import 'package:flutter/material.dart';
import 'package:flutter_aplication1/login/loginView.controller.dart';
import 'package:flutter_aplication1/widgets/emailField.widget.dart';
import 'package:flutter_aplication1/widgets/loginButton.widget.dart';
import 'package:flutter_aplication1/widgets/passwordField.widget.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Definindo o appBar como null
      body: _body(),
    );
  }

  Widget _body() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/dentista.png',
            fit: BoxFit.fill, // Alterado de BoxFit.cover para BoxFit.fill
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 1, 28, 51).withOpacity(0.7),
                Color.fromARGB(255, 6, 116, 207).withOpacity(0.9),
              ],
              stops: [0.0, 0.7],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text(''),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Container(
              width: 300.0,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Olá, Seja Bem-Vindo(a)!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  EmailField(),
                  const SizedBox(height: 20.0),
                  PasswordField(),
                  const SizedBox(height: 50.0),
                  LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
