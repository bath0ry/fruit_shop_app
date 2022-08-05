import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop_app/home/view/pages/home_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 203, 141),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, top: 80, right: 10, bottom: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        icon: Icon(Icons.arrow_back_ios)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Minha Conta'),
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Meu perfil',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Meu Endereços',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 168,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Contas Bancárias / Cartões',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 72,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Definições'),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Configurações do Chat',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 108,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Notificação',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Privacidade',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 196,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Idioma / Language',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text('Suporte'),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Central de Ajuda',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 156,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Políticas',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 216,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(133, 239, 163, 235))),
                              child: Text(
                                'Sobre',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 240,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
