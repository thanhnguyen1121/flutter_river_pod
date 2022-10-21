import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:river_pod_demo/page/demo_list_view_page.dart';
import 'package:river_pod_demo/page/future_provider_page.dart';
import 'package:river_pod_demo/page/page_stateful.dart';
import 'package:river_pod_demo/page/provider_page.dart';
import 'package:river_pod_demo/page/state_notifier_provider_page.dart';
import 'package:river_pod_demo/page/state_provider_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ProviderPage(),
      // home: const StateProviderPage(),
      // home: const FutureProviderPage(),
      // home: const StateNotifierProviderPage(),
      home: const PageStateful(),
    );
  }
}
