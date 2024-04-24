import 'package:faker/faker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:task/features/category/data/models/category_model.dart';
import 'package:task/features/category/data/models/resturant_model.dart';

import '../../../../generated/assets.gen.dart';
import '../../../common/api_utils.dart';

@lazySingleton
class CategoryRemoteDataSource {
  static var faker = Faker();

  Future<List<CategoryModel>> getCategory() async {
    return throwAppException(() async {
      final result = await Future.delayed(
        const Duration(seconds: 2),
        () => [
          CategoryModel(name: 'Food', imagePath: Assets.burger.path, numberOf: 10, subCategories: [], resturant: [], isPopular: true),
          CategoryModel(name: 'Toys & Games', imagePath: Assets.toys.path, numberOf: 10, subCategories: [], resturant: [], isPopular: true),
          CategoryModel(name: 'Sports', imagePath: Assets.sport.path, numberOf: 10, subCategories: [], resturant: [], isPopular: true),
          CategoryModel(name: 'Gym', imagePath: Assets.gym.path, numberOf: 10, subCategories: [], resturant: []),
          CategoryModel(name: 'Electrician', imagePath: Assets.electric.path, numberOf: 10, subCategories: [], resturant: []),
          CategoryModel(name: 'Hotels', imagePath: Assets.hotel.path, numberOf: 10, subCategories: [], resturant: []),
          CategoryModel(name: 'Car Services', imagePath: Assets.car.path, numberOf: 10, subCategories: [], resturant: []),
          CategoryModel(name: 'Beauty', imagePath: Assets.beauty.path, numberOf: 10, subCategories: [], resturant: []),
          CategoryModel(name: 'Clothing', imagePath: Assets.clothing.path, numberOf: 10, subCategories: [], resturant: []),
        ],
      );
      print('/////////////////////////////////////////////////////////');
      print(result);
      print('/////////////////////////////////////////////////////////');
      return result;
    });
  }
}
