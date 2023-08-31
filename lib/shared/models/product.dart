import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

NumberFormat formatNumber =
    NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

class Product {
  final String image, title, description;
  final double price;
  final int size, id;
  final Color bgcolor;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    this.bgcolor = const Color.fromARGB(255, 255, 255, 255),
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'GoldenDog',
    description: 'TEXTO 1',
    price: 234.90,
    size: 12,
    image: 'assets/images/rations/goldenDog.jpg',
  ),
  Product(
    id: 2,
    title: 'OrigensDog',
    description: 'TEXTO 2',
    price: 120.90,
    size: 12,
    image: 'assets/images/rations/origensDog.jpg',
  ),
  Product(
    id: 3,
    title: 'PedigreDog',
    description: 'TEXTO 3',
    price: 230.10,
    size: 12,
    image: 'assets/images/rations/pedigreDog.jpg',
  ),
  Product(
    id: 4,
    title: 'GoldenCat',
    description: 'TEXTO 4',
    price: 150.30,
    size: 12,
    image: 'assets/images/rations/goldenCat.jpg',
  ),
  Product(
    id: 5,
    title: 'SpecialCat',
    description: 'TEXTO 5',
    price: 125.50,
    size: 12,
    image: 'assets/images/rations/specialCat.png',
  ),
  Product(
    id: 6,
    title: 'WiskasCat',
    description: 'TEXTO 6',
    price: 200.20,
    size: 12,
    image: 'assets/images/rations/wiskasCat.jpg',
  ),
  Product(
    id: 7,
    title: 'Gold Calopsita',
    description: 'TEXTO 6',
    price: 150.20,
    size: 12,
    image: 'assets/images/rations/goldCalopsita.png',
  ),
  Product(
    id: 8,
    title: 'Nutropica Aves',
    description: 'TEXTO 6',
    price: 500.20,
    size: 12,
    image: 'assets/images/rations/nutropicaAves.png',
  ),
  Product(
    id: 9,
    title: 'Nutropica Periquito',
    description: 'TEXTO 6',
    price: 100.20,
    size: 12,
    image: 'assets/images/rations/nutropicaPeriquito.png',
  ),
];
