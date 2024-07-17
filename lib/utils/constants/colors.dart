import 'package:flutter/material.dart';

class CColors{
  CColors._(); //significa que o construtor é privado

  //cores basicas do app
  static const Color primary = Color(0xFF4B68FF);
  static const Color secundary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);


  //gradientes
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, 0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ]
  );


  //cores de texto
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecundary = Color(0xff6c757d);
  static const Color textWhite = Colors.white;


  //cores de fundo
  static const Color light = Color(0XFFF6F6F6);
  static const Color dark = Color(0XFF272727);
  static const Color primaryBackground = Color(0XFFf3f5ff);


  //cores de fundo dos containers
  static const Color lightCountainer =Color(0xfff6f6f6);
  static  Color darkCountainer = Colors.white.withOpacity(0.1);


  //cores dos botões
  static const Color buttonPrimary = Color(0xff4b68ff);
  static const Color buttonSecundary = Color(0xff6c757d);
  static const Color buttonDisabled = Color(0xffc4c4c4);


  //cores das bordas
  static const Color borderPrimary = Color(0xffd9d9d9);
  static const Color borderSecundary = Color(0xffe6e6e6);


  //erro e validação de cores]
  static const Color error = Color(0xffd32f2f);
  static const Color sucess = Color(0xff388e3c);
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2);


  //tons neutros
  static const Color black = Color(0xff232323);
  static const Color darkGrey = Color(0xff939393);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color grey = Color(0xfff0f0f0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);

}