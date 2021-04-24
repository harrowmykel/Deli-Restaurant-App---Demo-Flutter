import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/category.dart';

class CategoryMealScreen extends StatelessWidget {
  static final String routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    final Category category = routeArgs['category'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: Text(category.title),
    );
  }
}
