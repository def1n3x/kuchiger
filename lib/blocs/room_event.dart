part of 'room_bloc.dart';

@immutable
abstract class RoomEvent {}

class PageIndexChangeEvent extends RoomEvent {
  final int pageIndex;

  PageIndexChangeEvent(this.pageIndex);
}
