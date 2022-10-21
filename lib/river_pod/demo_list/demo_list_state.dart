import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_pod_demo/data/models/product_model.dart';

part 'demo_list_state.freezed.dart';

@freezed
abstract class DemoListState with _$DemoListState {
  const factory DemoListState(Map<String, ProductModel> models) =
      DemoListStateData;

  const factory DemoListState.loading() = DemoListStateLoading;

  const factory DemoListState.error(dynamic error) = DemoListStateError;
}
