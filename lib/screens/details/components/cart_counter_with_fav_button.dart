import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/screens/details/components/cart_counter.dart';

class CartCounterWithFavButton extends StatelessWidget {
  const CartCounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffff6464),
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
