abstract class TextEvent {}

class TextAdd extends TextEvent {
  TextAdd(this.text);
  final String text;
}

class TextClear extends TextEvent {}
