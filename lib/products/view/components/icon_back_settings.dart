import 'package:flutter/material.dart';

import '../../../home/view/pages/home_page.dart';

class IconBackSettings extends StatelessWidget {
  const IconBackSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context) => HomePage()));
        },
        icon: Icon(Icons.arrow_back_ios));
  }
}
