import 'package:clean_framework/clean_framework.dart';

class CurrencyListEntity extends Entity {
  CurrencyListEntity({
    List<EntityFailure> errors = const [],
    List<CurrencyEntity>? currencies,
  })  : currencies = currencies ?? [],
        super(errors: errors);

  final List<CurrencyEntity> currencies;

  @override
  List<Object> get props => [errors];

  @override
  merge({errors, List<CurrencyEntity>? currencies}) {
    return CurrencyListEntity(
      errors: errors ?? this.errors,
      currencies: currencies ?? this.currencies,
    );
  }
}

class CurrencyEntity extends Entity {
  CurrencyEntity({
    List<EntityFailure> errors = const [],
    String? id,
    String? currencyName,
    String? currencyCode,
    String? currencySymbol,
  })  : id = id ?? '',
        currencyName = currencyName ?? '',
        currencyCode = currencyCode ?? '',
        currencySymbol = currencySymbol ?? '',
        super(errors: errors);

  final String id;
  final String currencyName;
  final String currencyCode;
  final String currencySymbol;

  @override
  List<Object> get props => [errors];

  @override
  merge({
    errors,
    String? id,
    String? currencyName,
    String? currencyCode,
    String? currencySymbol,
  }) {
    return CurrencyEntity(
      errors: errors ?? this.errors,
      id: id ?? this.id,
      currencyName: currencyName ?? this.currencyName,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbol: id ?? this.currencySymbol,
    );
  }
}
