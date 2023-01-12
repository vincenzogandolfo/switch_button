import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Switch'),
            ),
          ),
          body: const Center(child: HomePage())),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool termsAndConiditionsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
        title: const Text(
          "Accetta termini e condizioni d'uso",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        value: termsAndConiditionsAccepted,
        onChanged: (value) =>
            setState(() => termsAndConiditionsAccepted = value));
  }
}
