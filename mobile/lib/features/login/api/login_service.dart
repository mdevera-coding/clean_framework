import 'package:business_banking/features/login/api/login_service_request_model.dart';
import 'package:business_banking/features/login/api/login_service_response_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:business_banking/locator.dart';

class LoginService
    extends EitherService<LoginServiceRequestModel, LoginServiceResponseModel> {
  LoginService()
      : super(
            method: RestMethod.post,
            restApi: ExampleLocator().api,
            path: 'enter_path_here_once_ready');

  @override
  LoginServiceResponseModel parseResponse(Map<String, dynamic> jsonResponse) {
    return LoginServiceResponseModel.fromJson(jsonResponse);
  }
}
