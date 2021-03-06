import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Colour',
                style: TextStyle(color: kTextColor),
              ),
              Row(
                children: [
                  colorDot(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  colorDot(
                    color: Color(0xfff8c078),
                  ),
                  colorDot(
                    color: Color(0xffa29898),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: 'Size\n'),
            TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold, color: kTextColor))
          ])),
        )
      ],
    );
  }
}

Widget colorDot({
  required Color color,
  bool isSelected = false,
}) =>
    Container(
        padding: const EdgeInsets.all(2.5),
        margin: const EdgeInsets.only(
            top: kDefaultPadding * 0.4, right: kDefaultPadding * 0.2),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        height: 24,
        width: 24,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ));
