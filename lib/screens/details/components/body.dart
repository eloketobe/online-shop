import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/add_to_cart.dart';
import 'package:online_shop/screens/details/components/color_and_size.dart';
import 'package:online_shop/screens/details/components/description.dart';
import 'package:online_shop/screens/details/components/product_title_with_image.dart';

import 'cart_counter_with_fav_button.dart';

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
                  height: size.height * 0.88,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      const CartCounterWithFavButton(),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product)
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
