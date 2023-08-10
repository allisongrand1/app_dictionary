abstract class AddWordEvent {}

class FindWordEvent extends AddWordEvent {
  final String search;

  FindWordEvent(this.search);
}
