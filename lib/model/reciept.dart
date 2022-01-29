class Reciept {
  Reciept({
    required this.id,
    required this.name,
    required this.restaurantId,
    required this.price,
    required this.foodMajorCategory,
    required this.rating,
    required this.imageLink,
    required this.V,
  });
  late final String id;
  late final String name;
  late final String restaurantId;
  late final String price;
  late final FoodMajorCategory foodMajorCategory;
  late final String rating;
  late final String imageLink;
  late final int V;
  
  Reciept.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    restaurantId = json['restaurant_id'];
    price = json['price'];
    foodMajorCategory = FoodMajorCategory.fromJson(json['food_major_category']);
    rating = json['rating'];
    imageLink = json['image_link'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['restaurant_id'] = restaurantId;
    _data['price'] = price;
    _data['food_major_category'] = foodMajorCategory.toJson();
    _data['rating'] = rating;
    _data['image_link'] = imageLink;
    _data['__v'] = V;
    return _data;
  }
}

class FoodMajorCategory {
  FoodMajorCategory({
    required this.size,
    required this.weight,
    required this.calories,
    required this.ingredients,
  });
  late final String size;
  late final String weight;
  late final String calories;
  late final String ingredients;
  
  FoodMajorCategory.fromJson(Map<String, dynamic> json){
    size = json['size'];
    weight = json['weight'];
    calories = json['calories'];
    ingredients = json['ingredients'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['size'] = size;
    _data['weight'] = weight;
    _data['calories'] = calories;
    _data['ingredients'] = ingredients;
    return _data;
  }
}