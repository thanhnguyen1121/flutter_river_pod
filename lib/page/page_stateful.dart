import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class PageStateful extends StatefulWidget {
  static const routeName = 'PageStateful';

  const PageStateful({Key? key}) : super(key: key);

  @override
  State<PageStateful> createState() => _PageStatefulState();
}

class _PageStatefulState extends State<PageStateful> {
  static const tag = 'PageStateful';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState cha");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies cha");
  }

  @override
  void didUpdateWidget(covariant PageStateful oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget cha");
  }

  @override
  Widget build(BuildContext context) {
    print("build cha");
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: PageStateful2(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Text("Check"),
      ),
    );
  }
}

class PageStateful2 extends StatefulWidget {
  static const routeName = 'PageStateful';

  const PageStateful2({Key? key}) : super(key: key);

  @override
  State<PageStateful2> createState() => _PageStatefulState2();
}

class _PageStatefulState2 extends State<PageStateful2> {
  static const tag = 'PageStateful2';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState con");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies con");
  }

  @override
  void didUpdateWidget(covariant PageStateful2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget con");
  }

  @override
  Widget build(BuildContext context) {
    print("build con");
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("PageStateful2"),
        ),
      ),
    );
  }
}
