import 'package:business_banking/features/forex/bloc/currencies_service_adapter.dart';
import 'package:business_banking/features/forex/model/currencies_entity.dart';
import 'package:business_banking/features/forex/model/currencies_view_model.dart';
import 'package:business_banking/locator.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

class CurrenciesUseCase extends UseCase {
  Function(ViewModel) _viewModelCallBack;
  RepositoryScope? _scope;

  CurrenciesUseCase(Function(ViewModel) viewModelCallBack)
      : _viewModelCallBack = viewModelCallBack;

  void create() async {
    _scope = ExampleLocator().repository.containsScope<CurrencyListEntity>();
    if (_scope == null) {
      final newCurrenciesEntity = CurrencyListEntity();
      _scope = ExampleLocator()
          .repository
          .create<CurrencyListEntity>(newCurrenciesEntity, _notifySubscribers);
    } else {
      _scope!.subscription = _notifySubscribers;
    }
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    await ExampleLocator()
        .repository
        .runServiceAdapter(_scope!, CurrenciesServiceAdapter());
  }

  void _notifySubscribers(entity) {
    _viewModelCallBack(buildViewModelForServiceUpdate(entity));
  }

  CurrenciesViewModel buildViewModelForServiceUpdate(
      CurrencyListEntity entity) {
    if (entity.hasErrors()) {
      return CurrenciesViewModel(
        serviceStatus: ServiceStatus.fail,
        currencies: entity.currencies,
      );
    } else {
      return CurrenciesViewModel(
        serviceStatus: ServiceStatus.success,
        currencies: entity.currencies,
      );
    }
  }
}
