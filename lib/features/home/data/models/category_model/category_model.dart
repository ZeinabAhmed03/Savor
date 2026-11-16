import 'category.dart';

class CategoryModel {
  List<Category>? categories;

  CategoryModel({this.categories});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'categories': categories?.map((e) => e.toJson()).toList(),
  };
}
