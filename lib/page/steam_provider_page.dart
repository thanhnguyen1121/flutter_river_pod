import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/models/product_model.dart';
import 'package:river_pod_demo/widgets/app_error_widget.dart';
import 'package:river_pod_demo/widgets/app_loading_widget.dart';

final streamProvider = StreamProvider<List<ProductModel>>((ref) async* {
  final channel = StreamController.broadcast();
  ref.onDispose(() {
    channel.sink.close();
  });

  await for (final value in channel.stream) {
    yield value as List<ProductModel>;
  }
});

class SteamProviderPage extends ConsumerWidget {
  const SteamProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final models = ref.watch(streamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Steam Provider Page"),
      ),
      body: models.when(
        data: (data) {
          return ListView.builder(itemBuilder: (context, index) {
            final product = data[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('${product.price} \$'),
            );
          });
        },
        error: (object, stackTrace) {
          return AppErrorWidget(error: stackTrace.toString());
        },
        loading: () => const AppLoadingWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ref.read(streamProvider).
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
