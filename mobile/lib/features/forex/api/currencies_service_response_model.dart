import 'package:clean_framework/clean_framework_defaults.dart';

class CurrenciesServiceResponseListModel implements JsonResponseModel {
  CurrenciesServiceResponseListModel({required this.currencies});

  final List<CurrenciesServiceResponseModel> currencies;

  CurrenciesServiceResponseListModel.fromJson(Map<String, dynamic> json)
      : currencies = json['data'] != null
            ? (json['data'] as List)
                .map((e) => CurrenciesServiceResponseModel.fromJson(e))
                .toList()
            : [];

  @override
  List<Object?> get props => [currencies];

  @override
  bool get stringify => true;
}

class CurrenciesServiceResponseModel implements JsonResponseModel {
  CurrenciesServiceResponseModel({
    this.id,
    this.currencyName,
    this.currencyCode,
    this.currencySymbol,
  });

  final String? id;
  final String? currencyName;
  final String? currencyCode;
  final String? currencySymbol;

  CurrenciesServiceResponseModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        currencyName = json['currencyName'] as String?,
        currencyCode = json['currencyCode'] as String?,
        currencySymbol = json['currencySymbol'] as String?;

  @override
  List<Object?> get props => [id, currencyName, currencyCode, currencySymbol];

  @override
  bool get stringify => true;
}
