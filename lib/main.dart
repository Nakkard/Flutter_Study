import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Main Screen'),
    );
  }
}

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
            Text('Counter: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(_description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 128),
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
          ],
        ),
      ),
    );
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
}

