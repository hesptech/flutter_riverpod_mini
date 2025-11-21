import 'package:flutter/material.dart';
import '../../../presentation/screens/counter_change_notifier/counter_change_notifier_view_model.dart';
import '../../../data/counter_change_notifier/counter_change_notifier_service.dart';

final class CounterView extends StatelessWidget {
  final vm = CounterViewModel(service: CounterService());

  CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              ListenableBuilder(
                  listenable: vm,
                  builder: (context, child) {
                    return Text(
                      vm.count.toString(),
                      style: TextStyle(fontSize: 40),
                    );
                  }),
              ElevatedButton(
                onPressed: vm.increment,
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
