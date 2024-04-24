class SubCategoryModel{
  final String name;
  final String imagePath;

  const SubCategoryModel({
    required this.name,
    required this.imagePath,
  });

  @override
  String toString() {
    return 'SubCategoryModel{name: $name, imagePaht: $imagePath}';
  }
}