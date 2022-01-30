class Food {
  late String sId;
  late String name;
  late String restaurantId;
  late String price;
  late String generalType;
  late List<FoodMajorCategory> foodMajorCategory;
  late String rating;
  late String imageLink;
  late int iV;

  Food({
    required this.sId,
    required this.name,
    required this.restaurantId,
    required this.price,
    required this.generalType,
    required this.foodMajorCategory,
    required this.rating,
    required this.imageLink,
    required this.iV,
  });

  Food.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    restaurantId = json['restaurant_id'];
    price = json['price'];
    generalType = json['generalType'];
    foodMajorCategory = <FoodMajorCategory>[];
    json['food_major_category'].forEach((v) {
      foodMajorCategory.add(new FoodMajorCategory.fromJson(v));
    });

    rating = json['rating'];
    imageLink = json['image_link'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['restaurant_id'] = this.restaurantId;
    data['price'] = this.price;
    data['generalType'] = this.generalType;
    if (this.foodMajorCategory != null) {
      data['food_major_category'] =
          this.foodMajorCategory.map((v) => v.toJson()).toList();
    }
    data['rating'] = this.rating;
    data['image_link'] = this.imageLink;
    data['__v'] = this.iV;
    return data;
  }
}

class FoodMajorCategory {
  late String size;
  late String weight;
  late String calories;
  late String ingredients;
  late String price;

  FoodMajorCategory({
    required this.size,
    required this.weight,
    required this.calories,
    required this.ingredients,
    required this.price,
  });

  FoodMajorCategory.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    weight = json['weight'];
    calories = json['calories'];
    ingredients = json['ingredients'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['weight'] = this.weight;
    data['calories'] = this.calories;
    data['ingredients'] = this.ingredients;
    data['price'] = this.price;
    return data;
  }
}
