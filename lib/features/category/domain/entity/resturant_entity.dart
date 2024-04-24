class ResturantEntity{
  final String imagePath;
  final String logo;
  final String name;

  const ResturantEntity({
    required this.imagePath,
    required this.logo,
    required this.name,
  });

  @override
  String toString() {
    return 'ResturantEntity{imagePath: $imagePath, logo: $logo, name: $name}';
  }
}