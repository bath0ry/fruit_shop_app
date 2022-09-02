import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/pages/config_chat_page.dart';
import 'package:fruits_shop_app/products/view/pages/contas_banc_page.dart';
import 'package:fruits_shop_app/products/view/pages/meu_perfil_page.dart';
import 'package:fruits_shop_app/products/view/pages/meus_endere%C3%A7os_page.dart';
import 'package:fruits_shop_app/products/view/pages/notific_page.dart';
import 'package:fruits_shop_app/products/view/pages/privacidade_page.dart';
import 'package:fruits_shop_app/products/view/pages/settings_page.dart';
import 'home/view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'meu_perfil': (context) => const MeuPerfilPage(),
        'config_chat': (context) => const ConfigPage(),
        'contas_banc': (context) => const ContasBancPage(),
        'meus_endereco': (context) => const MeusEnderecosPage(),
        'notificacao': (context) => const NotificPage(),
        'privacidade': (context) => const PrivacidadePage()
      },
      title: 'Fuit Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
