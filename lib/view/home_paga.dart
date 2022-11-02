import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubit/api_cubit/items_api_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    context.read<ItemsApiCubit>().fetchProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Items page'),
      ),
      body: BlocBuilder<ItemsApiCubit, ItemsApiState>(
        builder: (context, state) {
          if (state is ItemsApiProgress) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ItemApiFailure) {
            return const Center(
              child: Text("error"),
            );
          }
          if (state is ItemsApiSuccess) {
            return ListView(
              children: List.generate(
                state.items.length,
                (index) => GestureDetector(
                  onTap: (){

                  },
                  child: ListTile(
                    title: Text(state.items[index].name),
                    subtitle: Text(state.items[index].price.toString()),
                    trailing: IconButton(onPressed: () {  }, icon:  const Icon(Icons.shopping_basket_sharp),),
                  )
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
