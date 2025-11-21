import 'package:flutter/material.dart';
import '../../../data/counter_change_notifier/counter_change_notifier_model.dart';
import '../../../data/counter_change_notifier/counter_change_notifier_service.dart';

final class CounterViewModel extends ChangeNotifier {
  CounterModel _state = CounterModel(count: 0);

  get count => _state.count;

  final CounterService service;

  CounterViewModel({required this.service});

  void increment() {
    _state = service.increment(_state);
    notifyListeners();
  }
}
