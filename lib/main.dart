import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_bloc.dart';
import 'package:counter_app_bloc/bloc/text/text_bloc.dart';
import 'package:counter_app_bloc/screen/text_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TextBloc(),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TextUser(),
      ),
    );
  }
}
