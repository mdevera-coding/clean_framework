import 'package:clean_framework/clean_framework.dart';
import 'package:counter_app/counter/bloc/counter_bloc.dart';
import 'package:counter_app/counter/ui/counter_presenter.dart';
import 'package:flutter/material.dart';

class CounterFeatureWidget extends StatelessWidget {
  const CounterFeatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (_) => CounterBloc(),
      child: CounterPresenter(),
    );
  }
}
