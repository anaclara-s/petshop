import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/constants.dart';

NumberFormat formatNumber =
    NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

class Product {
  final String image, title, description;
  final double price, weight, size;
  final int id;
  final Color bgcolor;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.weight,
    this.bgcolor = kScaffoldBackgroundColor,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: 'GoldenDog',
    description: dummyText,
    price: 234.90,
    size: 10.1,
    weight: 20,
    image: 'assets/images/rations/goldenDog.png',
  ),
  Product(
    id: 2,
    title: 'OrigensDog',
    description: dummyText,
    price: 120.90,
    size: 15.1,
    weight: 15,
    image: 'assets/images/rations/origensDog.png',
  ),
  Product(
    id: 3,
    title: 'PedigreDog',
    description: dummyText,
    price: 230.10,
    size: 10.1,
    weight: 25,
    image: 'assets/images/rations/pedigreDog.png',
  ),
  Product(
    id: 4,
    title: 'GoldenCat',
    description: dummyText,
    price: 150.30,
    size: 10.1,
    weight: 10,
    image: 'assets/images/rations/goldenCat.png',
  ),
  Product(
    id: 5,
    title: 'SpecialCat',
    description: dummyText,
    price: 125.50,
    size: 1.0,
    weight: 20,
    image: 'assets/images/rations/specialCat.png',
  ),
  Product(
    id: 6,
    title: 'WiskasCat',
    description: dummyText,
    price: 200.20,
    size: 10.1,
    weight: 10.1,
    image: 'assets/images/rations/wiskasCat.png',
  ),
  Product(
    id: 7,
    title: 'Gold Calopsita',
    description: dummyText,
    price: 150.20,
    size: 0.5,
    weight: 0.5,
    image: 'assets/images/rations/goldCalopsita.png',
  ),
  Product(
    id: 8,
    title: 'Nutropica Aves',
    description: dummyText,
    price: 500.20,
    size: 5.0,
    weight: 10,
    image: 'assets/images/rations/nutropicaAves.png',
  ),
  Product(
    id: 9,
    title: 'Nutropica Periquito',
    description: dummyText,
    price: 100.20,
    size: 0.3,
    weight: 1,
    image: 'assets/images/rations/nutropicaPeriquito.png',
  ),
];

String dummyText =
    'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.';
