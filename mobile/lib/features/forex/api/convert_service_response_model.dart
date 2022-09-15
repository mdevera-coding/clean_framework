import 'package:business_banking/features/forex/api/currencies_service_response_model.dart';
import 'package:clean_framework/clean_framework_defaults.dart';

class ConvertServiceResponseModel implements JsonResponseModel {
  ConvertServiceResponseModel({
    this.id,
    this.fromCurrency,
    this.toCurrency,
    this.fromValue,
    this.toValue,
  });

  final String? id;
  final CurrenciesServiceResponseModel? fromCurrency;
  final CurrenciesServiceResponseModel? toCurrency;
  final num? fromValue;
  final num? toValue;

  ConvertServiceResponseModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        fromCurrency = json['fromCurrency'] != null
            ? CurrenciesServiceResponseModel.fromJson(json['fromCurrency'])
            : null,
        toCurrency = json['toCurrency'] != null
            ? CurrenciesServiceResponseModel.fromJson(json['fromCurrency'])
            : null,
        fromValue = (json['fromValue'] ?? 0) as num,
        toValue = (json['toValue'] ?? 0) as num;

  @override
  List<Object?> get props => [
        id,
        fromCurrency,
        toCurrency,
        fromValue,
        toValue,
      ];

  @override
  bool get stringify => true;
}
