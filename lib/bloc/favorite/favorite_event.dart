part of 'favorite_bloc.dart';

abstract class FavoriteEvent {}

class AddFavoriteText extends FavoriteEvent {
  AddFavoriteText(this.favoriteText);
  final String favoriteText;
}
