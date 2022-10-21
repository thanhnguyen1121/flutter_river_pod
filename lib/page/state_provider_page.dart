import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/enums/product_sort_type.dart';
import 'package:river_pod_demo/data/models/product_model.dart';

final _products = [
  const ProductModel(id: 1, name: 'iPhone', price: 999),
  const ProductModel(id: 2, name: 'cookie', price: 2),
  const ProductModel(id: 3, name: 'ps5', price: 500),
];

final productStateProvider = Provider<List<ProductModel>>((ref) {
  final sortType = ref.watch<ProductSortType>(productSortTypeProvider);
  switch (sortType) {
    case ProductSortType.name:
      _products.sort((a, b) => a.name.compareTo(b.name));
      return _products;
    case ProductSortType.price:
      _products.sort((a, b) => a.price.compareTo(b.price));
      return _products;
  }
});

final productSortTypeProvider =
    StateProvider<ProductSortType>((ref) => ProductSortType.name);

final counterProvider = StateProvider<int>((ref) => 1);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("State provider page"),
        actions: [
          DropdownButton<ProductSortType>(
            value: ref.watch(productSortTypeProvider),
            onChanged: (value) {
              ref.read(productSortTypeProvider.notifier).state = value!;
            },
            items: const [
              DropdownMenuItem(
                value: ProductSortType.name,
                child: Icon(
                  Icons.sort_by_alpha,
                  color: Colors.black,
                ),
              ),
              DropdownMenuItem(
                value: ProductSortType.price,
                child: Icon(
                  Icons.sort,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('${product.price} \$'),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text("current value ${ref.watch(counterProvider)}"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Text("Add"),
      ),
    );
  }
}
