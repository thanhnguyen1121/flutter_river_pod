import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/models/product_model.dart';
import 'package:river_pod_demo/river_pod/demo_list/demo_list_state.dart';
import 'package:river_pod_demo/utils/list_provider.dart';

class DemoListNotifierProvider extends StateNotifier<DemoListState>
    with ListProvider<ProductModel> {
  DemoListNotifierProvider() : super(const DemoListState.loading());

  Future<void> init() async {
    final result = await fetchItems(1, 20);
    items.addAll(mapItems(result));
    state = DemoListStateData(items);
  }

  @override
  Future<List<ProductModel>> fetchItems(int start, int limit) async {
    await Future.delayed(const Duration(seconds: 2));
    List<ProductModel> models = [];
    for (int i = 0; i < limit; i++) {
      models.add(
        ProductModel(
          id: i,
          name: lorem(paragraphs: 1, words: 3),
          price: Random().nextInt(10000).toDouble(),
        ),
      );
    }
    return models;
  }

  Future<void> loadMore() async {
     await super.loadMoreItems();
     state = DemoListStateData(items);
  }

  Future<void> refresh() async {
    await super.refreshItems();
    state = DemoListStateData(items);
  }
}
