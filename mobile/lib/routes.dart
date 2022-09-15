import 'package:business_banking/features/forex/ui/currencies_feature_widget.dart';
import 'package:business_banking/features/hub/ui/hub_screen.dart';
import 'package:flutter/material.dart';

abstract class BusinessBankingRouter {
  static const String initialRoute = '/';
  static const String hubRoute = '/hub';
  static const String newOnlineRegistrationScreen =
      '/newOnlineRegistrationScreen';
  static const String depositCheckRoute = '/depositCheck';
  static const String depositCheckConfirmRoute = '/depositCheckConfirm';
  static const String NewSuccessScreen = '/NewSuccessScreen';

  static Widget generate(String name) {
    switch (name) {
      case initialRoute:
        return CurrenciesFeatureWidget();

      case hubRoute:
        return HubScreen();

      default:
        return const PageNotFound();
    }
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('404, Page Not Found!')));
  }
}
