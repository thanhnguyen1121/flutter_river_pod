import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/models/product_model.dart';
import 'package:river_pod_demo/widgets/app_error_widget.dart';
import 'package:river_pod_demo/widgets/app_loading_widget.dart';

final productFutureProvider = FutureProvider<List<ProductModel>>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  List<ProductModel> models = [];
  for (int i = 0; i < Random().nextInt(100); i++) {
    models.add(
      ProductModel(
        id: i,
        name: lorem(paragraphs: 1, words: 3),
        price: Random().nextInt(10000).toDouble(),
      ),
    );
  }
  return models;
});

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productList = ref.watch(productFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future provider"),
      ),
      body: productList.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final product = data[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('${product.price} \$'),
              );
            },
          );
        },
        error: (object, stackTrace) {
          return AppErrorWidget(error: stackTrace.toString());
        },
        loading: () => const AppLoadingWidget(),
      ),
    );
  }
}
