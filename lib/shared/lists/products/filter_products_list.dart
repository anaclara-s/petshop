import 'products_list.dart';

List<Product> selectedItems = products.where((item) {
  return (item.title.contains('Dog') && item.title.contains('Origens')) ||
      item.title.contains('Cat') ||
      (item.title.contains('Calopsita') ||
          item.title.contains('Aves') ||
          item.title.contains('Periquito'));
}).toList();
