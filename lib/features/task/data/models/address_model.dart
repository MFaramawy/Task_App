import 'package:task/features/task/domain/entities/address.dart';

class AddressModel extends Address {
  const AddressModel({
    required super.id,
    required super.image,
    required super.title,
    required super.desc,
    required super.subTitle,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'],
      image: json['image'],
      title: json['title'],
      desc: json['desc'],
      subTitle: json['subTitle'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'desc': desc,
        'subTitle': subTitle,
      };
}
