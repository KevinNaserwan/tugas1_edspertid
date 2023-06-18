import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class FlutterDelayWidgetDemo extends StatefulWidget {
  const FlutterDelayWidgetDemo({Key? key}) : super(key: key);
  @override
  State<FlutterDelayWidgetDemo> createState() => _FlutterDelayWidgetDemoState();
}
class _FlutterDelayWidgetDemoState extends State<FlutterDelayWidgetDemo> {
  bool _isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  // 1. Using Timer
    Timer(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
// 2. Future.delayed
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            if (_isLoading) ...[
              const CircularProgressIndicator(),
            ] else ...[
              const Icon(
                Icons.done,
                size: 74,
                color: Colors.greenAccent,
              ),
            ],
          ],
        ),
      ),
    );
  }
}