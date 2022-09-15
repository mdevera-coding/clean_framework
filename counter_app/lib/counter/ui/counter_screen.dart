import 'package:clean_framework/clean_framework.dart';
import 'package:counter_app/counter/models/counter_view_model.dart';
import 'package:flutter/material.dart';

import 'counter_presenter_actions.dart';

class CounterScreen extends Screen {
  final CounterViewModel viewModel;
  final CounterPresenterActions actions;

  const CounterScreen({
    Key? key,
    required this.viewModel,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Framework Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              viewModel.counter,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => actions.onButtonTapped(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
