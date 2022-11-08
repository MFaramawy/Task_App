part of 'task_cubit.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object> get props => [];
}

class TaskInitial extends TaskState {}

class IncrementState extends TaskState {
  final double totalPrice;

  const IncrementState(this.totalPrice);

  @override
  List<Object> get props => [totalPrice];
}

class DecrementState extends TaskState {
  final double totalPrice;

  const DecrementState(this.totalPrice);

  @override
  List<Object> get props => [totalPrice];
}

class GetTotalPriceState extends TaskState {
  final double totalPrice;

  const GetTotalPriceState(this.totalPrice);
  @override
  List<Object> get props => [totalPrice];
}

class ChangeBottomNavState extends TaskState {
  final int index;

  const ChangeBottomNavState(this.index);

  @override
  List<Object> get props => [index];
}

class ToggleFavoriteIconState extends TaskState {
  final bool isFavorite;

  const ToggleFavoriteIconState(this.isFavorite);

  @override
  List<Object> get props => [isFavorite];
}
