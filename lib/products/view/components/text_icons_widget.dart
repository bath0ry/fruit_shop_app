import 'package:flutter/material.dart';
import 'package:fruits_shop_app/products/view/components/text_button_widget.dart';

class TextIconsWidgets extends StatelessWidget {
  const TextIconsWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text('Minha Conta'),
            ),
            TextButtonWidget(
              colorWidget: Colors.black,
              fontSizeWidget: 18,
              fontWeightWidget: FontWeight.w600,
              iconWidget: Icon(Icons.arrow_forward_ios),
              textWidget: 'Meu Perfil',
              paddingIcon: const EdgeInsets.only(left: 207),
            ),
            TextButtonWidget(
                textWidget: 'Meus Endereços',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 158)),
            TextButtonWidget(
                textWidget: 'Contas Bancárias/Cartões',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 80)),
            SizedBox(
              height: 25,
            ),
            Text('Definições'),
            TextButtonWidget(
                textWidget: 'Configurações do Chat',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 108)),
            TextButtonWidget(
                textWidget: 'Notificação',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 200)),
            TextButtonWidget(
                textWidget: 'Privacidade',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 198)),
            TextButtonWidget(
                textWidget: 'Idioma/Language',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 152)),
            SizedBox(
              height: 25,
            ),
            Text('Suporte'),
            TextButtonWidget(
                textWidget: 'Central de Ajuda',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 160)),
            TextButtonWidget(
                textWidget: 'Políticas',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 223)),
            TextButtonWidget(
                textWidget: 'Sobre',
                fontSizeWidget: 18,
                fontWeightWidget: FontWeight.w600,
                colorWidget: Colors.black,
                iconWidget: Icon(Icons.arrow_forward_ios),
                paddingIcon: const EdgeInsets.only(left: 245)),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ],
    );
  }
}
