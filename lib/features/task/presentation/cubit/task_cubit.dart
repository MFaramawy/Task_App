import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/config/routes/routes_names.dart';
import 'package:task/features/task/data/repositories/custom_data.dart';
import 'package:task/features/task/presentation/screens/cart_screen.dart';
import 'package:task/features/task/presentation/screens/home_screen.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  void delayToLayout(BuildContext _) {
    Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.pushNamedAndRemoveUntil(
          _, RoutesNames.layout, (route) => false),
    );
  }

  int index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Center(child: Text('News')),
    const Center(child: Text('Favorites')),
    const CartScreen(),
  ];
  void changeBottomNavTab(int value) {
    index = value;
    emit(ChangeBottomNavState(index));
  }

  double totalPrice = 0;
  void increment(int index) {
    CustomData.cartData[index].quantity++;
    totalPrice += (double.parse(CustomData.cartData[index].price));
    emit(IncrementState(totalPrice));
  }

  void decrement(int index) {
    if (CustomData.cartData[index].quantity == 1) return;
    CustomData.cartData[index].quantity--;
    totalPrice -= (double.parse(CustomData.cartData[index].price));
    emit(DecrementState(totalPrice));
  }

  void getTotalPrice() {
    for (var element in CustomData.cartData) {
      totalPrice += double.parse(element.price) * element.quantity;
      emit(GetTotalPriceState(totalPrice));
    }
  }

  final isFavorite = List<bool>.generate(
    CustomData.dealsOfDayData.length,
    (index) => false,
  );
  void toggleFavoriteIcon(int index) {
    isFavorite[index] = !isFavorite[index];
    emit(ToggleFavoriteIconState(isFavorite[index]));
  }
}
