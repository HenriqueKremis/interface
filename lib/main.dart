import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interface Completa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 158, 62, 6)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Interface Completa'),
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
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  void _updateText() {
    setState(() {
      _displayText = _controller.text; // Atualiza o texto exibido
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center (
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite algo',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _updateText,
              child: Text('Exibir Texto'),
            ),
            SizedBox(height: 16.0),
            Text(
              _displayText,
              style: TextStyle(fontSize: 24),
            ),
          ],  
        ),
      ),
    );
  }
}