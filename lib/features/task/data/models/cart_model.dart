import 'package:task/features/task/domain/entities/cart.dart';

// ignore: must_be_immutable
class CartModel extends Cart {
  CartModel({
    required super.id,
    required super.image,
    required super.title,
    required super.desc,
    required super.price,
    required super.quantity,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      desc: json['desc'],
      price: json['price'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'desc': desc,
        'price': price,
        'quantity': quantity
      };
}
