import 'package:business_banking/features/forex/api/currencies_service.dart';
import 'package:business_banking/features/forex/api/currencies_service_request_model.dart';
import 'package:business_banking/features/forex/api/currencies_service_response_model.dart';
import 'package:business_banking/features/forex/model/currencies_entity.dart';
import 'package:clean_framework/clean_framework.dart';

class CurrenciesServiceAdapter extends ServiceAdapter<
    CurrencyListEntity,
    CurrenciesServiceRequestModel,
    CurrenciesServiceResponseListModel,
    CurrenciesService> {
  CurrenciesServiceAdapter() : super(CurrenciesService());

  @override
  CurrencyListEntity createEntity(initialEntity, responseModel) {
    return initialEntity.merge(
      errors: [],
      currencies: responseModel.currencies
          .map((e) => CurrencyEntity(
                id: e.id,
                currencyCode: e.currencyCode,
                currencyName: e.currencyName,
                currencySymbol: e.currencySymbol,
              ))
          .toList(),
    ) as CurrencyListEntity;
  }
}
