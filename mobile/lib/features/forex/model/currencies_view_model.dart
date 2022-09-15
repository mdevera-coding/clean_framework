import 'package:business_banking/features/forex/model/convert_entity.dart';
import 'package:clean_framework/clean_framework.dart';

import 'currencies_entity.dart';

class CurrenciesViewModel extends ViewModel {
  CurrenciesViewModel({
    required this.currencies,
    this.serviceStatus = ServiceStatus.unknown,
    this.dataStatus = DataStatus.unknown,
  });

  final ServiceStatus serviceStatus;
  final DataStatus dataStatus;
  final List<CurrencyEntity> currencies;

  @override
  List<Object?> get props => [serviceStatus, dataStatus];
}

enum ServiceStatus { success, fail, unknown }

enum DataStatus { valid, invalid, unknown }
