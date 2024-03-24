import 'package:flutter/material.dart';
import 'package:flutter_aplication1/home/home.view.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  static const email = 'admin@admin.com';//trocar pela api do SGB
  static const password = 'admin';//trocar pela api do sgbd

  void tryTologin() {
    switch (emailInput.text) {
      case email:
        checkPassword();
        break;
      case '':
        printError('Insira um Email valido!');
        break;
      default:
      printError('Email não encontrado!');
    }
  }

  void checkPassword() {
    print('Login');

    switch (passwordInput.text) {
      case password:
        login();
        break;
      case '':
        printError('Insira sua senha');
        break;
      default:
      printError('Senha Incorreta.');
    }
  }
void login(){
  Get.to(const HomeView());
}


  void printError(String error) {
    print(error);
  }
}  