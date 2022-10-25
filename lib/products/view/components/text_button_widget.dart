import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/pages/meu_perfil_page.dart';

class TextButtonWidget extends StatelessWidget {
  final String textWidget;
  final double fontSizeWidget;
  final FontWeight fontWeightWidget;
  final Color colorWidget;
  final Icon iconWidget;
  final EdgeInsetsGeometry paddingIcon;
  final String pageRouteNamed;
  const TextButtonWidget({
    Key? key,
    required this.textWidget,
    required this.fontSizeWidget,
    required this.fontWeightWidget,
    required this.colorWidget,
    required this.iconWidget,
    required this.paddingIcon,
    required this.pageRouteNamed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(pageRouteNamed);
        },
        child: Row(
          children: [
            Text(
              textWidget,
              style: TextStyle(
                  fontSize: fontSizeWidget,
                  fontWeight: fontWeightWidget,
                  color: colorWidget),
            ),
            Padding(
              padding: paddingIcon,
              child: iconWidget,
            ),
          ],
        ),
      ),
    );
  }
}
