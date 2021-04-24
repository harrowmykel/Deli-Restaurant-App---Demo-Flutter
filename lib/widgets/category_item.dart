import 'package:flutter/material.dart';
import '../models/category.dart';
import '../screens/category_meal.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({
    this.category,
  });

  void _onCategorySelect(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealScreen.routeName,
      arguments: {'category': category},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onCategorySelect(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(category.title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.7),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
