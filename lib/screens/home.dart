import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class NameSwapWithProvider extends StatelessWidget {
  const NameSwapWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    // LISTEN
    // We use context.watch() to listen to changes in the Counter
    final name = context.watch<NameSwapController>().name;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Auth Example"),
      ),
      body: Center(
        child: Text(
          'Name value: $name',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // CALL
          // Access the provider and call increment
          context.read<NameSwapController>().swapName();
        },
        child: const Icon(Icons.person),
      ),
    );
  }
}
