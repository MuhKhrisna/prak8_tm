import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // TODO: Add a variable for Category (104)
  final Category category;

  const HomePage({this.category = Category.all, Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    return AsymmetricView(
      products: ProductsRepository.loadProducts(Category.all)
      );
  }
}
