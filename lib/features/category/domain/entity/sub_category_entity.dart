class SubCategoryEntity{
  final String name;
  final String imagePath;

  const SubCategoryEntity({
    required this.name,
    required this.imagePath,
  });

  @override
  String toString() {
    return 'SubCategoryEntity{name: $name, imagePaht: $imagePath}';
  }
}