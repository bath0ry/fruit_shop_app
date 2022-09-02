import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruits_shop_app/products/view/pages/settings_page.dart';

class MeuPerfilPage extends StatelessWidget {
  const MeuPerfilPage({Key? key}) : super(key: key);

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
      backgroundColor: Colors.green,
    );
  }
}
