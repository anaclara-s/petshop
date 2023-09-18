import 'products_list.dart';

List<Product> filteredDogProducts() {
  return products.where((item) {
    return item.title.contains('Dog');
  }).toList();
}

List<Product> filteredCatProducts() {
  return products.where((item) {
    return item.title.contains('Cat');
  }).toList();
}

List<Product> filteredBirdProducts() {
  return products.where((item) {
    return item.title.contains('Calopsita') ||
        item.title.contains('Aves') ||
        item.title.contains('Periquito');
  }).toList();
}
