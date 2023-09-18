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
