import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../widgets/action_button.dart';
import '../widgets/header_widget.dart';

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
            HeaderWidget(
              counter: _counter,
              description: _description,
            ),
            const SizedBox(height: 24),
            ActionButton(
              onPressed: _incrementCounter,
              text: 'Increase',
            ),
            ActionButton(
              onPressed: _decrementCounter,
              text: 'Decrease',
            ),
            ActionButton(
              onPressed: _resetCounter,
              text: 'Reset Counter',
            ),
            ActionButton(
              onPressed: _changeDescription,
              text: 'Change text',
            ),
            ActionButton(
              onPressed: _toggleDescription,
              text: 'Toggle description',
            ),
            ActionButton(
              onPressed: _goToDetails,
              text: 'Go to details',
            ),
          ],
        ),
      ),
    );
  }
}