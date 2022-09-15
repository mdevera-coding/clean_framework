import 'package:business_banking/features/forex/api/currencies_service_request_model.dart';
import 'package:business_banking/features/forex/api/currencies_service_response_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:business_banking/locator.dart';

class CurrenciesService extends EitherService<CurrenciesServiceRequestModel,
    CurrenciesServiceResponseListModel> {
  CurrenciesService({RestApi? restApi})
      : super(
          method: RestMethod.get,
          restApi: restApi ?? ExampleLocator().api,
          path: '/currencies',
        );

  @override
  CurrenciesServiceResponseListModel parseResponse(
      Map<String, dynamic> jsonResponse) {
    return CurrenciesServiceResponseListModel.fromJson(jsonResponse);
  }
}
