
class Catergory{
  String imagePath;
  String name;

  Catergory({
    required this.imagePath,
    required this.name
});

  String get _name => name;
  String get _imagePath => imagePath;
}