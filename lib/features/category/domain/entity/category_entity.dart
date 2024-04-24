import 'package:task/features/category/data/models/resturant_model.dart';
import 'package:task/features/category/data/models/sub_category_model.dart';

class CategoryEntity{
  final String name;
  final String imagePath;
  final int numberOf;
  final List<SubCategoryModel> subCategories;

  final List<ResturantModel> resturant;
  final bool isPopular;

  const CategoryEntity({
    required this.name,
    required this.imagePath,
    required this.numberOf,
    required this.subCategories,
    required this.resturant,
    this.isPopular = false,
  });

  @override
  String toString() {
    return 'CategoryEntity{name: $name, imagePath: $imagePath, numberOf: $numberOf, subCategories: $subCategories, resturant: $resturant, isPopular: $isPopular}';
  }
}
