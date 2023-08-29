import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color bgcolor;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    this.bgcolor = const Color.fromARGB(255, 0, 4, 255),
  });
}

List<Product> product = [
  Product(
    id: 1,
    title: 'RAÇÃO CACHORRO goldenDog',
    price: 234,
    size: 12,
    description: 'TEXTO TESTE',
    image: 'assets/images/rations/goldenDog.jpg',
    bgcolor: const Color.fromARGB(255, 153, 0, 255),
  ),
];
