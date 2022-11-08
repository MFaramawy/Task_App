import 'package:task/features/task/domain/entities/cart.dart';
import 'package:task/features/task/domain/entities/address.dart';
import 'package:task/features/task/domain/entities/category.dart';
import 'package:task/features/task/domain/entities/deals_of_day.dart';

class CustomData {
  static final List<Address> addressData = [
    const Address(
      id: '1',
      image: 'image',
      title: 'Home Address',
      subTitle: 'Mustafa St. No:2',
      desc: 'Street x12',
    ),
    const Address(
      id: '2',
      image: 'image',
      title: 'Office Address',
      subTitle: 'Axis Istanbul, B2 Blok',
      desc: 'Floor 2, Office 11',
    ),
  ];
  static final List<Cart> cartData = [
    Cart(
      id: '1',
      image: 'image',
      title: 'Turkish Steak',
      desc: '173 Grams',
      price: '25',
      quantity: 1,
    ),
    Cart(
      id: '2',
      image: 'image',
      title: 'Salmon',
      desc: '2 Serving',
      price: '30',
      quantity: 1,
    ),
    Cart(
      id: '1',
      image: 'image',
      title: 'Red Juice',
      desc: '1 Bottle',
      price: '25',
      quantity: 1,
    ),
    Cart(
      id: '1',
      image: 'image',
      title: 'Cola',
      desc: '1 Bottle',
      price: '11',
      quantity: 1,
    ),
  ];

  static final List<Category> categoryData = [
    const Category(id: '1', image: 'image', title: 'Steak'),
    const Category(id: '2', image: 'image', title: 'Vegetables'),
    const Category(id: '3', image: 'image', title: 'Beverages'),
    const Category(id: '4', image: 'image', title: 'Fish'),
    const Category(id: '5', image: 'image', title: 'Juice'),
  ];

  static final List<DealsOfDay> dealsOfDayData = [
    const DealsOfDay(
      id: '1',
      image: 'image',
      title: 'Summer Sun Ice Cream Pack',
      pieces: '5',
      price: '18',
      distance: '15 Minutes Away',
      discount: '12',
      isFavorite: false,
    ),
    const DealsOfDay(
      id: '1',
      image: 'image',
      title: 'Summer Sun Ice Cream Pack',
      pieces: '5',
      price: '18',
      distance: '15 Minutes Away',
      discount: '12',
      isFavorite: false,
    ),
  ];
}
