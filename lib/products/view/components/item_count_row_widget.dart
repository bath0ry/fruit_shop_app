import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/components/quantity_button_widget.dart';

class ItemCounterWidget extends StatefulWidget {
  final double price;
  const ItemCounterWidget({Key? key, required this.price}) : super(key: key);

  @override
  State<ItemCounterWidget> createState() => _ItemCounterWidgetState();
}

class _ItemCounterWidgetState extends State<ItemCounterWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuanityButton(
          onPressedDecrement: () {
            setState(() {
              if (count != 1) {
                count--;
              }
            });
          },
          onPressedIncrement: () {
            setState(() {
              if (count != 100) {
                count++;
              }
            });
          },
          count: count,
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            '\$${(widget.price * count).toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
