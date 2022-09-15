import 'package:clean_framework/clean_framework.dart';
import 'package:counter_app/counter/api/example_request_model.dart';
import 'package:counter_app/counter/api/example_response_model.dart';
import 'package:counter_app/counter/api/example_service.dart';
import 'package:counter_app/counter/models/counter_entity.dart';

class ExampleServiceAdapter extends ServiceAdapter<CounterEntity,
    ExampleRequestModel, ExampleResponseModel, ExampleService> {
  ExampleServiceAdapter() : super(ExampleService());

  @override
  CounterEntity createEntity(
      CounterEntity initialEntity, ExampleResponseModel responseModel) {
    return initialEntity.merge(counter: responseModel.counter);
  }

  @override
  ExampleRequestModel? createRequest(CounterEntity entity) {
    return ExampleRequestModel(currentCounter: entity.counter);
  }
}
