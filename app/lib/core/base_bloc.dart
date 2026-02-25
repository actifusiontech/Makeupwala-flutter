import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A robust Bloc implementation that guarantees stream cleanup.
/// Prevents memory leaks by ensuring all bound stream subscriptions are terminated precisely during the
/// bloc lifecycle destruction sequence.
abstract class SafeBloc<Event, State> extends Bloc<Event, State> {
  final List<StreamSubscription> _subscriptions = [];

  SafeBloc(super.initialState);

  /// Safely binds a stream and guarantees disposal when Bloc closes
  void bindStream(StreamSubscription sub) {
    _subscriptions.add(sub);
  }

  @override
  Future<void> close() async {
    for (var sub in _subscriptions) {
      await sub.cancel();
    }
    _subscriptions.clear();
    return super.close();
  }
}
