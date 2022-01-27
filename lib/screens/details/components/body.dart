import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';
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
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
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
