import 'package:business_banking/features/forex/api/currencies_service.dart';
import 'package:business_banking/features/forex/bloc/currencies_usecase.dart';
import 'package:business_banking/features/forex/model/currencies_view_model.dart';
import 'package:clean_framework/clean_framework.dart';

class CurrenciesBloc extends Bloc {
  late CurrenciesUseCase _currenciesUseCase;

  final currenciesViewModelPipe = Pipe<CurrenciesViewModel>();

  CurrenciesBloc({CurrenciesService? currenciesService}) {
    _currenciesUseCase = CurrenciesUseCase((viewModel) =>
        currenciesViewModelPipe.send(viewModel as CurrenciesViewModel));
    currenciesViewModelPipe.whenListenedDo(() {
      _currenciesUseCase.create();
      _currenciesUseCase.init();
    });
  }

  @override
  void dispose() {
    currenciesViewModelPipe.dispose();
  }
}
