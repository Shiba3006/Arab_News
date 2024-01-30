import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/constants/app_images.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: Appimages.countriesEgypt,
      categoryName: 'egypt',
    ),
    CategoryModel(
      image: Appimages.countriesPalestine,
      categoryName: 'palestine',
    ),
    CategoryModel(
      image: Appimages.countriesSudan,
      categoryName: 'sudan',
    ),
    CategoryModel(
      image: Appimages.countriesSyria,
      categoryName: 'syria',
    ),
    CategoryModel(
      image: Appimages.countriesLibya,
      categoryName: 'libya',
    ),
    CategoryModel(
      image: Appimages.countriesIraq,
      categoryName: 'iraq',
    ),
    CategoryModel(
      image: Appimages.countriesMorocco,
      categoryName: 'yemen',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
