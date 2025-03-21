import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meals_app/models/category_model.dart';

class CategroyGridItem extends StatelessWidget {
  const CategroyGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });
  final Category category;
  final void Function() onSelectCategory;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16).r,
      child: Container(
        padding: EdgeInsets.all(16).r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16).r,
          gradient: LinearGradient(
            colors: [
              category.color.withValues(alpha: 0.55),
              category.color.withValues(alpha: 0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
