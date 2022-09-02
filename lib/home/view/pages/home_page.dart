import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/pages/settings_page.dart';

import '../../../products/view/components/fruit_item_widget.dart';
import '../../../products/view/pages/shop_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Watermelon',
      'measureUnit': '4 kg',
      'price': 10.5,
      'imageUrl': 'http://www.zenipolpas.com.br/Imagens/FrutasG/melancia.png',
      'backgroundColor': const Color.fromARGB(111, 237, 199, 61),
      'iconColor': const Color.fromARGB(119, 255, 153, 0),
      'titleDescription': 'Product Description',
      'productDescription':
          'Watermelon is a creeping fruit native to Africa, it belongs to the cucurbitaceae family. It can have a rounded or elongated shape and its size varies between 25 and 75 cm. With a red pulp, sweet and with a high water content (about 90%), watermelon is a refreshing fruit and is widely consumed in summer as a dessert.'
    },
    {
      'title': 'Blueberry',
      'measureUnit': '1 kg',
      'price': 8.5,
      'imageUrl': 'https://www.pngmart.com/files/4/Blueberry-PNG-Photos.png',
      'backgroundColor': const Color.fromARGB(255, 184, 212, 234),
      'iconColor': Colors.grey,
      'titleDescription': 'Product Description',
      'productDescription':
          'blueberry, any of several North American shrubs of the genus Vaccinium (family Ericaceae), prized for their sweet edible fruits. Hailed as a superfood, blueberries are an excellent source of dietary fibre, vitamin C, vitamin K, manganese, iron, and a number of antioxidants.'
    },
    {
      'title': 'Peach',
      'measureUnit': '1 kg',
      'price': 4.50,
      'imageUrl':
          'https://purepng.com/public/uploads/large/purepng.com-peachpeachjuicy-fruitnectarinefoodfruitpeachescutted-peaches-17015273518552udi7.png',
      'backgroundColor': const Color.fromARGB(209, 241, 206, 153),
      'iconColor': Colors.orange,
      'titleDescription': 'Product Description',
      'productDescription':
          'The peach is a type of fruit which is botanically called drupe. Great size, rounded fruit, with a velvet thin and easy to peel skin. Its flesh is between a yellowish and whitish colour, sweet, juicy, giving off a pleasant aroma.'
    },
    {
      'title': 'Grape',
      'measureUnit': '1 kg',
      'price': 3.40,
      'imageUrl': 'https://cdn.picpng.com/grape/download-grape-25505.png',
      'backgroundColor': const Color.fromARGB(255, 151, 222, 153),
      'iconColor': Colors.green,
      'titleDescription': 'Product Description',
      'productDescription':
          'Grapes are fleshy, rounded fruits that grow in clusters made up of many fruits of greenish, yellowish or purple skin. The pulp is juicy and sweet, and it contain several seeds or pips. It is a well-known fruit; it is eaten raw, although it is mainly used for making wine.'
    },
    {
      'title': 'Apple',
      'measureUnit': '2 kg',
      'price': 9.50,
      'imageUrl': 'https://www.pngall.com/wp-content/uploads/11/Apple.png',
      'backgroundColor': const Color.fromARGB(255, 243, 203, 200),
      'iconColor': Colors.red,
      'titleDescription': 'Product Description',
      'productDescription':
          'The apple is the pomaceous pseudofruit of the apple tree, a tree in the Rosaceae family. It is one of the most widely cultivated tree pseudofruits, and the best known of the many members of the Malus genus that are used by humans.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: _appBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 23, right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Fruits and berries',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 25),
                _search(),
                const SizedBox(height: 20.0),
                _itemsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemsList() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 27),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2 / 2.5,
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
      ),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        return FruitItemWidget(
          title: _items[index]['title'],
          measureUnit: _items[index]['measureUnit'],
          price: _items[index]['price'],
          imageUrl: _items[index]['imageUrl'],
          backgroundColor: _items[index]['backgroundColor'],
          iconColor: _items[index]['iconColor'],
          titleDescription: _items[index]['titleDescription'],
          productDescription: _items[index]['productDescription'],
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShopPage(
                      backgroundColor: _items[index]['backgroundColor'],
                      imageUrl: _items[index]['imageUrl'],
                      title: _items[index]['title'],
                      price: _items[index]['price'],
                      productDescription: _items[index]['productDescription'],
                      titleDescription: _items[index]['titleDescription'],
                    )));
          },
        );
      },
    );
  }
}

Widget _search() {
  return TextField(
    maxLines: 1,
    decoration: InputDecoration(
      prefixIcon: const Icon(
        CupertinoIcons.search,
        color: Colors.black87,
        size: 30,
      ),
      hintText: ' Search',
      hintStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black26),
      fillColor: Colors.yellow[150],
      filled: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none),
    ),
  );
}

AppBar _appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.yellow[100],
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 25, top: 10),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => SettingsPage())));
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
      ),
    ],
  );
}
