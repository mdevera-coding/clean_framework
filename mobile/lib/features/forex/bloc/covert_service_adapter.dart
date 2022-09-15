import 'package:business_banking/features/forex/api/convert_service.dart';
import 'package:business_banking/features/forex/api/convert_service_request_model.dart';
import 'package:business_banking/features/forex/api/convert_service_response_model.dart';
import 'package:business_banking/features/forex/model/convert_entity.dart';
import 'package:clean_framework/clean_framework.dart';

class ConvertServiceAdapter extends ServiceAdapter<ConvertEntity,
    ConvertServiceRequestModel, ConvertServiceResponseModel, ConvertService> {
  ConvertServiceAdapter() : super(ConvertService());

  @override
  ConvertServiceRequestModel createRequest(ConvertEntity entity) {
    return ConvertServiceRequestModel(
      fromCurrencyCode: entity.fromCurrencyCode,
      toCurrencyCode: entity.toCurrencyCode,
      value: entity.value,
    );
  }

  @override
  ConvertEntity createEntity(initialEntity, responseModel) {
    return initialEntity.merge(
      errors: [],
    ) as ConvertEntity;
  }
}
