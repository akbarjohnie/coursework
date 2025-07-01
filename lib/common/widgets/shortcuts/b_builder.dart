import 'package:flutter_bloc/flutter_bloc.dart';

typedef BuilderCondition<S> = List<Object?> Function(S state);

typedef StateGetter<Result, S> = Result Function(S state);

class BBuilder<B extends BlocBase<St>, St> extends BlocBuilder<B, St> {
  BBuilder({
    required super.builder,
    BuilderCondition<St>? when,
    super.bloc,
    super.key,
  }) : super(buildWhen: when?.toConditions);
}

class BListener<B extends Bloc<dynamic, St>, St> extends BlocListener<B, St> {
  BListener({
    required super.listener,
    BuilderCondition<St>? when,
    super.child,
    super.bloc,
    super.key,
  }) : super(listenWhen: when?.toConditions);
}

class BConsumer<B extends BlocBase<St>, St> extends BlocConsumer<B, St> {
  BConsumer({
    required super.builder,
    required super.listener,
    BuilderCondition<St>? lWhen,
    BuilderCondition<St>? bWhen,
    super.bloc,
    super.key,
  }) : super(
          buildWhen: bWhen?.toConditions,
          listenWhen: lWhen?.toConditions,
        );
}

extension _BBInterace<State> on BuilderCondition<State> {
  BlocBuilderCondition<State> get toConditions {
    bool checkRebuild(State old, State fresh) {
      final previous = this.call(old);
      final next = this.call(fresh);

      for (int i = 0; i < previous.length; i++) {
        if (previous[i] != next[i]) return true;
      }

      return false;
    }

    return checkRebuild;
  }
}
