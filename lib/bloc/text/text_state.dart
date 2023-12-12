import 'package:equatable/equatable.dart';

class TextState extends Equatable {
  const TextState({required this.textList});
  final List<String> textList;

  @override
  List<Object> get props => [textList];
}

class TextInitials extends TextState {
  TextInitials() : super(textList: []);
}
