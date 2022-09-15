import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:equatable/equatable.dart';

class ConvertServiceRequestModel extends Equatable implements JsonRequestModel {
  ConvertServiceRequestModel({
    required this.fromCurrencyCode,
    required this.toCurrencyCode,
    required this.value,
  });

  final String fromCurrencyCode;
  final String toCurrencyCode;
  final double value;

  @override
  Map<String, dynamic> toJson() {
    return {
      'fromCurrencyCode': fromCurrencyCode,
      'toCurrencyCode': toCurrencyCode,
      'value': value,
    };
  }

  @override
  List<Object?> get props => [
        fromCurrencyCode,
        toCurrencyCode,
        value,
      ];
}
