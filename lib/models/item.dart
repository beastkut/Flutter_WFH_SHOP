class Item{
  String name;
  String price;
  String imagePath;
  String about;
  String discount;


  Item({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.about,
    required this.discount
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _about => about;
}