import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              setState(() {
                if (numberOfItems > 1) {
                  numberOfItems--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numberOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numberOfItems++;
            });
          },
        )
      ],
    );
  }

  Widget buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13))),
            padding: MaterialStateProperty.all(EdgeInsets.zero)),
        onPressed: press,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
