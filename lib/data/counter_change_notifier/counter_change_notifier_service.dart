import 'package:flutter_riverpod_annotations/data/counter_change_notifier/counter_change_notifier_model.dart';

class CounterService {
  CounterService._();
  static final _instance = CounterService._();
  factory CounterService() {
    return _instance;
  }

  CounterModel increment(CounterModel state) {
    int count = state.count + 1;
    return state.copyWith(count: count);
  }
}
