import 'package:business_banking/features/forex/bloc/currencies_bloc.dart';
import 'package:business_banking/features/forex/model/currencies_view_model.dart';
import 'package:business_banking/features/forex/ui/currencies_screen.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

class CurrenciesPresenter
    extends Presenter<CurrenciesBloc, CurrenciesViewModel, CurrenciesScreen> {
  @override
  CurrenciesScreen buildScreen(BuildContext context, CurrenciesBloc bloc,
      CurrenciesViewModel viewModel) {
    return CurrenciesScreen(
      viewModel: viewModel,
    );
  }

  @override
  Stream<CurrenciesViewModel> getViewModelStream(CurrenciesBloc bloc) {
    return bloc.currenciesViewModelPipe.receive;
  }

  @override
  Widget buildLoadingScreen(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget buildErrorScreen(BuildContext context, Object? error) {
    return Column(
      children: [
        Text('Could not load data'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: Text('Retry'),
        ),
      ],
    );
  }
}
