import 'package:business_banking/features/forex/bloc/currencies_bloc.dart';
import 'package:business_banking/features/forex/ui/currencies_presenter.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

class CurrenciesFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrenciesBloc(),
      child: CurrenciesPresenter(),
    );
  }
}
