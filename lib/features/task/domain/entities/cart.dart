import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Cart extends Equatable {
  final String id;
  final String image;
  final String title;
  final String desc;
  final String price;
  int quantity;

  Cart({
    required this.id,
    required this.image,
    required this.title,
    required this.desc,
    required this.price,
    this.quantity = 1,
  });
  @override
  List<Object?> get props => [
        id,
        image,
        title,
        desc,
        price,
        quantity,
      ];
}
