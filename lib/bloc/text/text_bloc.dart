import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/text/text_event.dart';
import 'package:counter_app_bloc/bloc/text/text_state.dart';

/* class TextBloc extends Bloc<TextEvent, TextState> {
  TextBloc() : super(TextInitials()) {
    on<TextAdd>((event, emit) {
      //  emit(TextState(textList: state.textList.add()));
      emit(TextState(textList: state.textList));
    });
  }
}
 */

class TextBloc extends Bloc<TextEvent, TextState> {
  TextBloc() : super(TextInitials()) {
    on<TextAdd>((event, emit) {
      final updatedTextList = List<String>.from(state.textList)
        ..add(event.text);
      emit(TextState(textList: updatedTextList));
    });

    on<TextClear>((event, emit) {
      emit(TextState(textList: []));
    });
  }
}
