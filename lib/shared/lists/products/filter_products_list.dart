import 'products_list.dart';

List<Product> filteredDogProducts() {
  return products.where((item) {
    return item.title.contains('Dog');
  }).toList();
}
