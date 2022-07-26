import 'package:flutter/material.dart';
import 'package:fruits_shop_app/home/view/pages/home_page.dart';

class IconsHeaderWidget extends StatelessWidget {
  const IconsHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(
          width: 210,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 0, left: 30, right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}
