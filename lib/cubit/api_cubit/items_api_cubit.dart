import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/api/api_provider.dart';
import 'package:task/models/item_models.dart';

part 'items_api_state.dart';

class ItemsApiCubit extends Cubit<ItemsApiState> {
  ItemsApiCubit({required this.apiProvider}) : super(ItemsApiInitial());

  final ApiProvider apiProvider;

  Future<void> fetchProducts()async{
    emit(ItemsApiInitial());
    try{
      var products = await apiProvider.getItems();
      emit(ItemsApiSuccess(items: products));
    }catch(e){
      emit(ItemApiFailure(errorMessage: e.toString()));
    }
  }
}
