import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: product.color,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/search.svg')),
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/icons/cart.svg'))
      ],
    );
  }
}
