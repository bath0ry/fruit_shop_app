import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatelessWidget {
  const FavoriteButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.fromLTRB(15, 15, 15, 15),
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(
                    color: Color.fromARGB(255, 255, 212, 73)))),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        child: const Icon(
          Icons.favorite,
          color: Color.fromARGB(255, 255, 212, 73),
          size: 37,
        ));
  }
}
