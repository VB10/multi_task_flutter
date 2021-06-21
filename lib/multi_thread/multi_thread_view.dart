import 'package:flutter/material.dart';
import './multi_thread_view_model.dart';

class MultiThreadView extends MultiThreadViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeLoading();
        },
      ),
      appBar: AppBar(
        title: Text('$count'),
      ),
      body: Center(
        child: Column(
          children: [isLoading ? CircularProgressIndicator() : SizedBox()],
        ),
      ),
    );
  }
}

// main thread
// XX
