import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String id;
  final String image;
  final String title;
  final String subTitle;
  final String desc;

  const Address({
    required this.id,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.desc,
  });
  @override
  List<Object?> get props => [
        id,
        image,
        title,
        subTitle,
        desc,
      ];
}
