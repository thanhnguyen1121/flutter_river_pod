import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_pod_demo/data/models/product_model.dart';

part 'state_notifier_state.freezed.dart';

@freezed
abstract class StateNotifierState with _$StateNotifierState {
  const factory StateNotifierState(List<ProductModel> models, int? index) =
      StateNotifierStateData;

  const factory StateNotifierState.loading() = StateNotifierStateLoading;

  const factory StateNotifierState.error(dynamic error) =
      StateNotifierStateError;

}
