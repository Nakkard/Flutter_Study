import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int counter;

  const DetailsScreen({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter value: $counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, counter + 10);
              },
              child: const Text('Add +10 and go back'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, counter + 25);
              },
              child: const Text('Add +25 and go back'),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, counter + 100);
              },
              child: const Text('Add +100 and go back'),
            ),
          ],
        ),
      ),
    );
  }
}