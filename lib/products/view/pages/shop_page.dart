import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/components/add_to_cart_button_widget.dart';
import 'package:fruits_shop_app/products/view/components/favorite_button_widget.dart';
import 'package:fruits_shop_app/products/view/components/icons_header_widget.dart';
import 'package:fruits_shop_app/products/view/components/item_count_row_widget.dart';

class ShopPage extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String imageUrl;
  final double price;
  final String titleDescription;
  final String productDescription;

  const ShopPage({
    Key? key,
    required this.backgroundColor,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.titleDescription,
    required this.productDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const IconsHeaderWidget(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Image.network(imageUrl),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ItemCounterWidget(
                  price: price,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  titleDescription,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 13,
                ),
                Text(
                  productDescription,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    FavoriteButtonWidget(),
                    SizedBox(
                      width: 30,
                    ),
                    AddToCartButtonWidget()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
