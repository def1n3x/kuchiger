import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomInitial()) {
    on<PageIndexChangeEvent>(_changeIndexImage);
  }

  void _changeIndexImage(PageIndexChangeEvent event, Emitter<RoomState> emit) {
    emit(ChangedIndexState(curentIndex: event.pageIndex));
  }
}
