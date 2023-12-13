import 'package:bloc/bloc.dart';
import 'package:counter_app_bloc/bloc/favorite/favorite_state.dart';

part 'favorite_event.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitials()) {
    on<AddFavoriteText>((event, emit) {
      final List<String> listWithFavoriteText =
          List<String>.from(state.favoriteList)..add(event.favoriteText);
      emit(FavoriteState(favoriteList: listWithFavoriteText));
    });
  }
}
