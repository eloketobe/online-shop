import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: product.color)),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 50,
            child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16))),
                    backgroundColor:
                        MaterialStateProperty.all(
                            product.color)),
                onPressed: () {},
                child: Text(
                  'buy now'.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ))
        ],
      ),
    );
  }
}
