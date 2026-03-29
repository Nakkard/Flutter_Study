import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final int counter;
  final String description;

  const HeaderWidget({
    super.key,
    required this.counter,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter: $counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}