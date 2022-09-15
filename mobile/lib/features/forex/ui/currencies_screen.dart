import 'package:business_banking/features/forex/model/currencies_view_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

class CurrenciesScreen extends Screen {
  final CurrenciesViewModel? viewModel;

  CurrenciesScreen({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      'Forex',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 32),
                    _CurrencyExchangeCard(),
                    const SizedBox(height: 32),
                    _CurrencyExchangeCard(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Convert'),
            ),
          ),
        ],
      ),
    );
  }
}

class _CurrencyExchangeCard extends StatelessWidget {
  const _CurrencyExchangeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            TextButton(onPressed: () {}, child: Text('USD')),
            Expanded(child: _CustomTextFormField()),
          ],
        ),
      ),
    );
  }
}

class _CustomTextFormField extends StatelessWidget {
  const _CustomTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
    );
  }
}
