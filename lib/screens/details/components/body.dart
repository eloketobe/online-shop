import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/color_and_size.dart';
import 'package:online_shop/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height / 3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      right: kDefaultPadding,
                      left: kDefaultPadding),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    required this.color,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}
