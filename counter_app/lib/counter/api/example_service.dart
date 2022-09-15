import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:counter_app/counter/api/example_response_model.dart';
import 'package:counter_app/locator.dart';

import 'example_request_model.dart';

class ExampleService
    extends EitherService<ExampleRequestModel, ExampleResponseModel> {
  ExampleService()
      : super(method: RestMethod.get, restApi: api(), path: 'example-path');

  @override
  ExampleResponseModel parseResponse(Map<String, dynamic> jsonResponse) {
    return ExampleResponseModel.fromJson(jsonResponse);
  }
}
