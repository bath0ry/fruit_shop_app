import 'package:flutter/material.dart';

import '../components/icon_back_settings.dart';
import '../components/text_icons_widget.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 203, 141),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30, top: 80, right: 10, bottom: 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconBackSettings(),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextIconsWidgets()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
