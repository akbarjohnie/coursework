import 'dart:async';

import 'package:bloc/bloc.dart';

abstract class EventMiddleware {
  FutureOr<void> call(FutureOr<void> Function() action);
}

class BBloc<Event, State> extends Bloc<Event, State> {
  BBloc(super.initialState);

  @override

  /// `middleware` - функция-декоратор над обработком действия
  void on<E extends Event>(
    EventHandler<E, State> handler, {
    EventTransformer<E>? transformer,
    EventMiddleware? middleware,
  }) {
    if (middleware == null) return super.on<E>(handler, transformer: transformer);
    return super.on<E>(
      (e, emit) => middleware.call(() => handler(e, emit)),
      transformer: transformer,
    );
  }
}
