import '../../domain/entity/resturant_entity.dart';

class ResturantModel extends ResturantEntity {

  const ResturantModel({
    required super.imagePath,
    required super.logo,
    required super.name,
  });

  @override
  String toString() {
    return 'ResturantModel{imagePath: $imagePath, logo: $logo, name: $name}';
  }
}