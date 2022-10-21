import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String error;

  const AppErrorWidget({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(error),
    );
  }
}
