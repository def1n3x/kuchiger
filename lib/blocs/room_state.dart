part of 'room_bloc.dart';

@immutable
abstract class RoomState {}

class RoomInitial extends RoomState {}

class ChangedIndexState extends RoomState {
  final int curentIndex;

  ChangedIndexState({required this.curentIndex});
}
