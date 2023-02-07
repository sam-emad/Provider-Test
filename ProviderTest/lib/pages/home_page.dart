import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.contanProvider});
  final CounterProvider contanProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
          onPressed: () => contanProvider.incremant(),
          child: const Icon(Icons.add, color: Colors.black)),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Flutter Provider Test",
                  style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              Text(
                '${contanProvider.count}',
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(height: 5),
              Consumer<CounterProvider>(
                builder: (_, counter, __) => ElevatedButton(
                  onPressed: () => counter.incrementdely(),
                  child: const Icon(Icons.delete, color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
