import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 220,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 304,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 230,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 784,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 454,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
  Product(
      id: 7,
      title: "Office Code",
      price: 321,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: const Color(0xFF3D82AA)),
  Product(
      id: 8,
      title: "Belt Bag",
      price: 204,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A981)),
  Product(
      id: 9,
      title: "Hang Top",
      price: 874,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989496)),
  Product(
      id: 10,
      title: "Old Fashion",
      price: 365,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B395)),
  Product(
      id: 11,
      title: "Office Code",
      price: 284,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7881)),
  Product(
    id: 12,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAA),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";