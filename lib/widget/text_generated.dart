import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/text/text_bloc.dart';
import 'package:counter_app_bloc/bloc/text/text_state.dart';
import 'package:flutter/material.dart';

class TextGenerated extends StatelessWidget {
  const TextGenerated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextBloc, TextState>(
      builder: (context, state) {
        print(state.textList);
        List<String> listState = state.textList;
        return Expanded(
          child: ListView.builder(
            itemCount: listState.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: GlobalKey(),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      listState[index],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
