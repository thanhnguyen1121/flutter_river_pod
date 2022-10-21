import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valueProvider = Provider<int>((ref) => 50);

class ProviderPage extends ConsumerWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Provider'),
        ),
        body: Center(
          child: Text(
            'The value is ${ref.watch(valueProvider)}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: const Text("Add"),
      ),
    );
  }
}
