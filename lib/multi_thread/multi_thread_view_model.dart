import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './multi_thread.dart';

abstract class MultiThreadViewModel extends State<MultiThread> {
  // Add your state and logic here

  bool isLoading = true;
  Timer? timer;
  Future<void> changeLoading() async {
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      print(timer.tick);
    });
    // compute(calculateAll, null).then((value) {
    //   _changeNumber(value);
    //   timer?.cancel();
    // });
    // await comuputeSample();
    // await comuputeSample();
    // await Future.wait([
    //   comuputeSample(),
    //   comuputeSample(),
    //   comuputeSample(),
    //   comuputeSample(),
    // ]);

    // calculateAll(5);
    // calculateAll(5);
    // calculateAll(5);
    // calculateAll(5);

    // firebase.init();
    await comuputeSample();
    await comuputeSample();
    await comuputeSample();
    // await compute(calculateAll, null);
    timer?.cancel();
    changeAll();
    await Future.delayed(Duration(milliseconds: 500));
    _changeLoading();
  }

  Future<void> comuputeSample() async {
    int x = await compute(calculateAll, null);
    print(x);
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  void _changeNumber(int number) {
    setState(() {
      count = number;
    });
  }

  Future<void> changeAll() async {
    await Future.delayed(Duration(milliseconds: 1000));
    print('object');
  }

  int count = 0;
}

int calculateAll(int? value) {
  int _count = 0;
  for (var i = 0; i < 1000000000; i++) {
    _count += i;
  }
  return _count;
}
