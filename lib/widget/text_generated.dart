import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_bloc.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_state.dart';
import 'package:counter_app_bloc/bloc/text/text_bloc.dart';
import 'package:counter_app_bloc/bloc/text/text_state.dart';
import 'package:flutter/material.dart';

class TextGenerated extends StatelessWidget {
  const TextGenerated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoriteBloc, FavoriteState>(
      listener: (context, state) {
        if (state is FavoriteState) {
          // print('Stato attuale dei preferiti: ${state.favoriteList}');
        }
      },
      child: BlocBuilder<TextBloc, TextState>(
        builder: (context, state) {
          List<String> listState = state.textList;
          return Expanded(
            child: ListView.builder(
              itemCount: listState.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(index),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        title: GestureDetector(
                          onTap: () {
                            context
                                .read<FavoriteBloc>()
                                .add(AddFavoriteText(listState[index]));
                          },
                          child: Icon(
                            Icons.star_rate_rounded,
                            color: Colors.amber,
                          ),
                        ),
                        leading: Text(listState[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
