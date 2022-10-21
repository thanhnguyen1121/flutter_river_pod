import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/models/product_model.dart';

import 'state_notifier_state.dart';


class MStateNotifierProvider extends StateNotifier<StateNotifierState> {
  MStateNotifierProvider() : super(const StateNotifierState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
    List<ProductModel> newModels = [];
    for (int i = 0; i < Random().nextInt(20); i++) {
      newModels.add(
        ProductModel(
          id: i,
          name: lorem(words: 3, paragraphs: 1),
          price: Random().nextInt(10000).toDouble(),
        ),
      );
    }
    state = StateNotifierStateData(newModels, null);
  }

  void remove(int index) {
    state.maybeWhen((models, selectedIndex) {
      final newModels = [...models];
      newModels.removeAt(index);
      state = StateNotifierStateData(newModels, selectedIndex);
    }, orElse: () {});
  }

  void setSelectedIndex(int newIndex){
    state.maybeWhen((models, index){
      final newModels = [...models];
      state = StateNotifierStateData(newModels, newIndex);
    }, orElse: (){});
  }
}
