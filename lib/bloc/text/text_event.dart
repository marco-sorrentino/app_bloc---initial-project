abstract class TextEvent {}

class TextAdd extends TextEvent {
  final String text;
  TextAdd(this.text);
}
