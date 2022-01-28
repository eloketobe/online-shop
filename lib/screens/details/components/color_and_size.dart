import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/body.dart';

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
                children: const [
                  ColorDot(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xfff8c078),
                  ),
                  ColorDot(
                    color: Color(0xffa29898),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: TextStyle(color: kTextColor),
                  children: [
                TextSpan(text: 'Size\n'),
                TextSpan(
                    text: '${product.size} cm',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: kTextColor))
              ])),
        )
      ],
    );
  }
}

