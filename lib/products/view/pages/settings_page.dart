import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop_app/home/view/pages/home_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30, top: 80, right: 10, bottom: 0),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  icon: Icon(Icons.arrow_back_ios))
            ],
          ),
        ),
      ),
    );
  }
}
