class ResturantModel{
  final String imagePath;
  final String logo;
  final String name;

  const ResturantModel({
    required this.imagePath,
    required this.logo,
    required this.name,
  });

  @override
  String toString() {
    return 'ResturantModel{imagePath: $imagePath, logo: $logo, name: $name}';
  }
}