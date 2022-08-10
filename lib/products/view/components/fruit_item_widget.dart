import 'package:flutter/material.dart';

class FruitItemWidget extends StatelessWidget {
  const FruitItemWidget({
    Key? key,
    required this.title,
    required this.measureUnit,
    required this.price,
    required this.imageUrl,
    required this.backgroundColor,
    required this.iconColor,
    required this.onTap,
    required this.titleDescription,
    required this.productDescription,
  }) : super(key: key);

  final String title;
  final String measureUnit;
  final double price;
  final String imageUrl;
  final Color backgroundColor;
  final Color iconColor;
  final String titleDescription;
  final String productDescription;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        child: Container(
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      measureUnit,
                      style: const TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '\$$price',
                      style: const TextStyle(
                          fontSize: 17.5, fontWeight: FontWeight.w900),
                    ),
                    Image.network(
                      imageUrl,
                      width: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: iconColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                  IconButton(
                    color: iconColor,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
