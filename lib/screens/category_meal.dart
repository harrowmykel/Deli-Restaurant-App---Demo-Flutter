import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/category_item.dart';
import '../models/category.dart';

class CategoryMealScreen extends StatelessWidget {
  final Category category;

  CategoryMealScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: Text(category.title),
    );
  }
}
