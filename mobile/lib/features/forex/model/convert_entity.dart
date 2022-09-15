import 'package:clean_framework/clean_framework.dart';

class ConvertEntity extends Entity {
  ConvertEntity({
    List<EntityFailure> errors = const [],
    String? fromCurrencyCode,
    String? toCurrencyCode,
    double? value,
  })  : fromCurrencyCode = fromCurrencyCode ?? '',
        toCurrencyCode = toCurrencyCode ?? '',
        value = value ?? 0,
        super(errors: errors);

  final String fromCurrencyCode;
  final String toCurrencyCode;
  final double value;

  @override
  List<Object> get props => [errors];

  @override
  merge({
    errors,
    String? fromCurrencyCode,
    String? toCurrencyCode,
    double? value,
  }) {
    return ConvertEntity(
      errors: errors ?? this.errors,
      fromCurrencyCode: fromCurrencyCode ?? this.fromCurrencyCode,
      toCurrencyCode: toCurrencyCode ?? this.toCurrencyCode,
      value: value ?? this.value,
    );
  }
}
