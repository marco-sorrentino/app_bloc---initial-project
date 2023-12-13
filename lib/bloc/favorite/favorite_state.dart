import 'package:equatable/equatable.dart';

class FavoriteState extends Equatable {
  const FavoriteState({required this.favoriteList});
  final List<String> favoriteList;

  @override
  List<Object> get props => [favoriteList];
}

class FavoriteInitials extends FavoriteState {
  FavoriteInitials() : super(favoriteList: []);
}
