import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/data/models/product_model.dart';
import 'package:river_pod_demo/page/detail_page.dart';
import 'package:river_pod_demo/river_pod/state_notifier/m_state_notifier_provider.dart';
import 'package:river_pod_demo/river_pod/state_notifier/state_notifier_state.dart';
import 'package:river_pod_demo/widgets/app_error_widget.dart';
import 'package:river_pod_demo/widgets/app_loading_widget.dart';

final stateNotifierProvider =
    StateNotifierProvider<MStateNotifierProvider, StateNotifierState>(
  (ref) => MStateNotifierProvider(),
);

class StateNotifierProviderPage extends ConsumerStatefulWidget {
  static const routeName = 'StateNotifierProviderPage';

  const StateNotifierProviderPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _StateNotifierProviderPageState();
  }
}

class _StateNotifierProviderPageState
    extends ConsumerState<StateNotifierProviderPage> {
  static const tag = 'StateNotifierProviderPage';

  @override
  void initState() {
    super.initState();
    ref.read(stateNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateNotifierProviderPage"),
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(stateNotifierProvider);
            return state.when(
              (models, selectedIndex) {
                return ListView.builder(
                  itemCount: models.length,
                  itemBuilder: (context, index) {
                    final product = models[index];
                    return ListTile(
                      onTap: () => ref
                          .read(stateNotifierProvider.notifier)
                          .remove(index),
                      onLongPress: () {
                        ref
                            .read(stateNotifierProvider.notifier)
                            .setSelectedIndex(index);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailPage(),
                          ),
                        );
                      },
                      title: Text(product.name),
                      subtitle: Text('${product.price} \$'),
                    );
                  },
                );
              },
              loading: () => const AppLoadingWidget(),
              error: (error) => AppErrorWidget(error: error),
            );
          },
        ),
      ),
    );
  }
}
