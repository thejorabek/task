part of 'items_api_cubit.dart';

@immutable
abstract class ItemsApiState {}

class ItemsApiInitial extends ItemsApiState {}


class ItemsApiSuccess extends ItemsApiState {
  ItemsApiSuccess({required this.items});

  final List<ItemsModel> items;
}

class ItemsApiProgress extends ItemsApiState {}


class ItemApiFailure extends ItemsApiState {

  ItemApiFailure({required this.errorMessage});

  final String errorMessage;
}