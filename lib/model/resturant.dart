class Resturant {
  Resturant({
    required this.id,
    required this.name,
    required this.logo,
    required this.rating,
    required this.bestSellingFood,
    required this.V,
  });
  late final String id;
  late final String name;
  late final String logo;
  late final String rating;
  late final String bestSellingFood;
  late final int V;
  
  Resturant.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    logo = json['logo'];
    rating = json['rating'];
    bestSellingFood = json['best_selling_food'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['logo'] = logo;
    _data['rating'] = rating;
    _data['best_selling_food'] = bestSellingFood;
    _data['__v'] = V;
    return _data;
  }

  // write factory function
  factory Resturant.fromJsonFactory(Map<String, dynamic> json) => Resturant(
    id: json['_id'],
    name: json['name'],
    logo: json['logo'],
    rating: json['rating'],
    bestSellingFood: json['best_selling_food'],
    V: json['__v'],
  );
}