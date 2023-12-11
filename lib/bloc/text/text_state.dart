import 'package:equatable/equatable.dart';

class TextState extends Equatable {
  final List<String> textList;
  const TextState({required this.textList});

  @override
  List<Object> get props => [textList];
}

class TextInitials extends TextState {
  TextInitials() : super(textList: []);
}
