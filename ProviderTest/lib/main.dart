import 'package:flutter/material.dart';
import 'package:onhold_app/pages/home_page.dart';
import 'package:onhold_app/providers/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return CounterProvider();
      },
      child: const ProviderTest(),
    ),
  );
}

class ProviderTest extends StatelessWidget {
  const ProviderTest({super.key});

  @override
  Widget build(BuildContext context) {
    final contanProvider = Provider.of<CounterProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(contanProvider: contanProvider),
    );
  }
}

