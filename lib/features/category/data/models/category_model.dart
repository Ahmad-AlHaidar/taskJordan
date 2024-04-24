import 'package:task/features/category/data/models/resturant_model.dart';
import 'package:task/features/category/data/models/sub_category_model.dart';

import '../../domain/entity/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    required super.name,
    required super.imagePath,
    required super.numberOf,
    required super.subCategories,
    required super.resturant,
    super.isPopular = false,
  });

  @override
  String toString() {
    return 'CategoryModel{name: $name, imagePath: $imagePath, numberOf: $numberOf, subCategories: $subCategories, resturant: $resturant, isPopular: $isPopular}';
  }
}
