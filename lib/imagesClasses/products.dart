class Products {
  String title;
  String name;
  String price;
  String imagePath;
  String imagePath1;
  String imagePath2;
  String imagePath3;
  String imagePath4;
  String description;

  Products({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.title,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
    required this.imagePath4,
    required this.description,
  });

  String get _title => title;
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _imagePath1 => imagePath1;
  String get _imagePath2 => imagePath2;
  String get _imagePath3 => imagePath3;
  String get _imagePath4 => imagePath4;
  String get _description => description;
}
