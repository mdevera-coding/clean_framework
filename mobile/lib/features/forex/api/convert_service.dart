import 'package:business_banking/features/forex/api/convert_service_request_model.dart';
import 'package:business_banking/features/forex/api/convert_service_response_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:business_banking/locator.dart';

class ConvertService extends EitherService<ConvertServiceRequestModel,
    ConvertServiceResponseModel> {
  ConvertService({RestApi? restApi})
      : super(
          method: RestMethod.post,
          restApi: restApi ?? ExampleLocator().api,
          path: '/convert',
        );

  @override
  ConvertServiceResponseModel parseResponse(Map<String, dynamic> jsonResponse) {
    return ConvertServiceResponseModel.fromJson(jsonResponse);
  }
}
