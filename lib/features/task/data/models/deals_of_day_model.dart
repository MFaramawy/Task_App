import 'package:task/features/task/domain/entities/deals_of_day.dart';

class DealsOfDayModel extends DealsOfDay {
  const DealsOfDayModel({
    required super.id,
    required super.image,
    required super.title,
    required super.pieces,
    required super.price,
    required super.distance,
    required super.discount,
    required super.isFavorite,
  });

  factory DealsOfDayModel.fromJson(Map<String, dynamic> json) {
    return DealsOfDayModel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      pieces: json['pieces'],
      price: json['price'],
      distance: json['distance'],
      discount: json['discount'],
      isFavorite: json['isFavorite'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'pieces': pieces,
        'price': price,
        'distance': distance,
        'discount': discount,
        'isFavorite': isFavorite,
      };
}
