import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubit/api_cubit/items_api_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                (index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 5,
                            offset: const Offset(1, 3),
                            color: Colors.grey.withOpacity(0.3))
                      ]),
                  child: Column(
                    children: [
                      Text(state.items[index].name),
                      Text(state.items[index].price.toString()),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Text("error happened in bloc");
          }
        },
      ),
    );
  }
}
