import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/api/api_client.dart';
import 'package:task/api/api_provider.dart';
import 'package:task/view/home_paga.dart';

import 'cubit/api_cubit/items_api_cubit.dart';

void main() {
  runApp( App());
}

class App extends StatelessWidget {
   App({Key? key}) : super(key: key);
  
  final ApiProvider apiProvider = ApiProvider(apiClient: ApiClient());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ItemsApiCubit(apiProvider: apiProvider))
      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
