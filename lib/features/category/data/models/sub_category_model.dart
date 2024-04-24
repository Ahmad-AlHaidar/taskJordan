import '../../domain/entity/sub_category_entity.dart';

class SubCategoryModel extends SubCategoryEntity {
  const SubCategoryModel({
    required super.name,
    required super.imagePath,
  });

  @override
  String toString() {
    return 'SubCategoryModel{name: $name, imagePaht: $imagePath}';
  }
}
