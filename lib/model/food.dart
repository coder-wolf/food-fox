// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Food> foodFromJson(String str) => List<Food>.from(json.decode(str).map((x) => Food.fromJson(x)));

String foodToJson(List<Food> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Food {
    Food({
        required this.id,
        required this.name,
        required this.restaurantId,
        required this.price,
        required this.foodMajorCategory,
        required this.rating,
        required this.imageLink,
        required this.v,
    });

    final String id;
    final String name;
    final String restaurantId;
    final String price;
    final List<FoodMajorCategory> foodMajorCategory;
    final String rating;
    final String imageLink;
    final int v;

    factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["_id"],
        name: json["name"],
        restaurantId: json["restaurant_id"],
        price: json["price"],
        foodMajorCategory: List<FoodMajorCategory>.from(json["food_major_category"].map((x) => FoodMajorCategory.fromJson(x))),
        rating: json["rating"],
        imageLink: json["image_link"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "restaurant_id": restaurantId,
        "price": price,
        "food_major_category": List<dynamic>.from(foodMajorCategory.map((x) => x.toJson())),
        "rating": rating,
        "image_link": imageLink,
        "__v": v,
    };
}

class FoodMajorCategory {
    FoodMajorCategory({
        required this.size,
        required this.weight,
        required this.calories,
        required this.ingredients,
    });

    final String size;
    final String weight;
    final String calories;
    final String ingredients;

    factory FoodMajorCategory.fromJson(Map<String, dynamic> json) => FoodMajorCategory(
        size: json["size"],
        weight: json["weight"],
        calories: json["calories"],
        ingredients: json["ingredients"],
    );

    Map<String, dynamic> toJson() => {
        "size": size,
        "weight": weight,
        "calories": calories,
        "ingredients": ingredients,
    };
}
