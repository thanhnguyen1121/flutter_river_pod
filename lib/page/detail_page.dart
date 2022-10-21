import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/river_pod/state_notifier/state_notifier_state.dart';

import 'state_notifier_provider_page.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final models =
        (ref.read(stateNotifierProvider) as StateNotifierStateData).models;
    final index =
        (ref.read(stateNotifierProvider) as StateNotifierStateData).index;
    final product = models[index!];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 24,
          ),
        ),
        title: const Text("DetailPage"),
      ),
      body: ListTile(
        title: Text(product.name),
        subtitle: Text('${product.price} \$'),
      ),
    );
  }
}
