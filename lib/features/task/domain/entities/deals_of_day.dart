import 'package:equatable/equatable.dart';

class DealsOfDay extends Equatable {
  final String id;
  final String image;
  final String title;
  final String pieces;
  final String price;
  final String distance;
  final String discount;
  final bool isFavorite;

  const DealsOfDay({
    required this.id,
    required this.image,
    required this.title,
    required this.pieces,
    required this.price,
    required this.distance,
    required this.discount,
    required this.isFavorite,
  });
  @override
  List<Object?> get props => [
        id,
        image,
        title,
        pieces,
        price,
        distance,
        discount,
        isFavorite,
      ];
}


