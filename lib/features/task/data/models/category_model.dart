import 'package:task/features/task/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({
    required super.id,
    required super.image,
    required super.title,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'image': image, 'title': title};
}
