import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/pages/settings_page.dart';

class MeusEnderecosPage extends StatelessWidget {
  const MeusEnderecosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(100),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(SettingsPage());
                  },
                  icon: Icon(Icons.arrow_back_ios))),
        ],
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
