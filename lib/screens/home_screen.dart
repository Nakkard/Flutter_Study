import 'package:flutter/material.dart';
import 'details_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _description = 'Flutter beginner';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _changeDescription() {
    setState(() {
      _description = 'I am learning Flutter 🚀';
    });
  }

  void _toggleDescription() {
    setState(() {
      _description = _description == 'Flutter beginner'
          ? 'I am learning Flutter 🚀'
          : 'Flutter beginner';
    });
  }

  Future<void> _goToDetails() async {
    final result = await Navigator.push<int>(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(counter: _counter),
      ),
    );

    if (result != null) {
      setState(() {
        _counter = result;
      });
    }
  }

  Widget _buildActionButton({
    required VoidCallback onPressed,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            _buildActionButton(
              onPressed: _incrementCounter,
              text: 'Increase',
            ),
            _buildActionButton(
              onPressed: _decrementCounter,
              text: 'Decrease',
            ),
            _buildActionButton(
              onPressed: _resetCounter,
              text: 'Reset Counter',
            ),
            _buildActionButton(
              onPressed: _changeDescription,
              text: 'Change text',
            ),
            _buildActionButton(
              onPressed: _toggleDescription,
              text: 'Toggle description',
            ),
            _buildActionButton(
              onPressed: _goToDetails,
              text: 'Go to details',
            ),
          ],
        ),
      ),
    );
  }
}