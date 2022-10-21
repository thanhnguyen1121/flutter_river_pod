import 'dart:async';
import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/river_pod/demo_list/demo_list_notifier_provider.dart';
import 'package:river_pod_demo/river_pod/demo_list/demo_list_state.dart';
import 'package:river_pod_demo/widgets/app_error_widget.dart';
import 'package:river_pod_demo/widgets/app_loading_widget.dart';

final demoListRiverPod =
    StateNotifierProvider<DemoListNotifierProvider, DemoListState>(
  (ref) => DemoListNotifierProvider(),
);

class DemoListViewPage extends ConsumerStatefulWidget {
  static const routeName = 'DemoListViewPage';

  const DemoListViewPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DemoListViewPage> createState() => _DemoListViewPageState();
}

class _DemoListViewPageState extends ConsumerState<DemoListViewPage> {
  static const tag = 'DemoListViewPage';
  final controller = ScrollController();
  final headerController = StreamController<bool>();
  final bottomController = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    ref.read(demoListRiverPod.notifier).init();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.addListener(() {
        if (controller.position.pixels == 0) {
          print('At the top');
          headerController.sink.add(true);
          ref.read(demoListRiverPod.notifier).refresh().then(
                (value) => headerController.sink.add(false),
              );
        }
        if (controller.position.pixels == controller.position.maxScrollExtent) {
          print('At the bottom');
          bottomController.sink.add(true);
          ref.read(demoListRiverPod.notifier).loadMore().then(
                (value) => bottomController.sink.add(false),
              );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(demoListRiverPod);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: state.when(
          (models) {
            return Column(
              children: [
                StreamBuilder<bool>(
                  initialData: false,
                  stream: headerController.stream,
                  builder: (context, snapshot) {
                    return Visibility(
                      visible: snapshot.requireData,
                      child: const CupertinoActivityIndicator(),
                    );
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    controller: controller,
                    itemCount: models.length,
                    itemBuilder: (context, index) {
                      final model = models[index.toString()];
                      return ListTile(
                        title: Text(model?.name ?? ""),
                        subtitle: Text(model?.price.toString() ?? ""),
                      );
                    },
                  ),
                ),
                StreamBuilder<bool>(
                  initialData: false,
                  stream: bottomController.stream,
                  builder: (context, snapshot) {
                    return Visibility(
                      visible: snapshot.requireData,
                      child: const CupertinoActivityIndicator(),
                    );
                  },
                ),
              ],
            );
          },
          loading: () {
            return const AppLoadingWidget();
          },
          error: (error) {
            return AppErrorWidget(error: error);
          },
        ),
      ),
    );
  }
}
