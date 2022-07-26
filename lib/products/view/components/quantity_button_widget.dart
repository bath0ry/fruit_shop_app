import 'package:flutter/material.dart';

class QuanityButton extends StatelessWidget {
  final void Function() onPressedDecrement;
  final void Function() onPressedIncrement;
  final int count;

  const QuanityButton(
      {super.key,
      required this.onPressedDecrement,
      required this.onPressedIncrement,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: const Color.fromARGB(32, 142, 140, 140),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: const Icon(
                Icons.remove,
                size: 23,
              ),
              onPressed: onPressedDecrement),
          Text(
            '$count',
            style: const TextStyle(fontSize: 25),
          ),
          IconButton(
              onPressed: onPressedIncrement,
              icon: const Icon(
                Icons.add,
                size: 23,
              ))
        ],
      ),
    );
  }
}
