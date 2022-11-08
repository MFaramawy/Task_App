import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task/features/task/data/repositories/data.dart';
import 'package:task/features/task/presentation/screens/cart_screen.dart';
import 'package:task/features/task/presentation/screens/home_screen.dart';

class TaskController extends GetxController {
  int index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Center(child: Text('News')),
    const Center(child: Text('Favorites')),
    const CartScreen(),
  ];
  void changeBottomNavTab(int value) {
    index = value;
    update();
  }

  void increment(int index) {
    CustomData.cartData[index].quantity++;
    totalPrice += (double.parse(CustomData.cartData[index].price));
    update();
  }

  void decrement(int index) {
    if (CustomData.cartData[index].quantity == 1) return;
    CustomData.cartData[index].quantity--;
    totalPrice -= (double.parse(CustomData.cartData[index].price));
    update();
  }

  final isFavorite = List<bool>.generate(
    CustomData.dealsOfDayData.length,
    (index) => false,
  );
  void toggleFavoriteIcon(int index) {
    isFavorite[index] = !isFavorite[index];
    update();
  }

  double totalPrice = 0;
  void getTotalPrice() {
    for (var element in CustomData.cartData) {
      totalPrice += double.parse(element.price) * element.quantity;
      update();
    }
  }
}
