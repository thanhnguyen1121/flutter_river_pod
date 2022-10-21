import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod_demo/application.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Application(),
    ),
  );
}
