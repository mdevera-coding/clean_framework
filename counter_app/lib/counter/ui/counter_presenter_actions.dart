import 'package:counter_app/counter/bloc/counter_bloc.dart';
import 'package:counter_app/counter/bloc/counter_events.dart';

class CounterPresenterActions {
  final CounterBloc bloc;

  const CounterPresenterActions(this.bloc);

  void onButtonTapped() {
    bloc.counterEventPipe.send(ButtonTapEvent());
  }
}
