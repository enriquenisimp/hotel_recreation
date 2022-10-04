import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_recreation/core/di/injection.dart';
import 'package:hotel_recreation/features/properties/domain/usecases/get_list_properties_usecase.dart';
import 'package:hotel_recreation/features/properties/presentation/list_properties/bloc/list_properties_cubit.dart';
import 'package:hotel_recreation/features/properties/presentation/list_properties/list_properties_page.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create:(context)=>ListPropertiesCubit(getIt<GetListPropertiesUseCase>()),
          child: const ListPropertiesPage()),
    );
  }
}

