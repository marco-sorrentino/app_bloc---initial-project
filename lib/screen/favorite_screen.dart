import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_bloc.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_state.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goBackPage() {
      Navigator.pop(context);
    }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          FloatingActionButton(
            onPressed: goBackPage,
          ),
          BlocBuilder<FavoriteBloc, FavoriteState>(
            builder: (context, state) {
              if (state.favoriteList.length != 0) {
                final favoriteState = state.favoriteList;
                return Expanded(
                  child: ListView.builder(
                    itemCount: favoriteState.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(favoriteState[index]),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return Center(
                  child: Text("There are no favorite"),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
