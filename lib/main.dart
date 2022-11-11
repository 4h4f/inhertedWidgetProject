import 'package:flutter/material.dart';
import 'controllers/state_inherited.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter app',
    theme: ThemeData(primaryColor: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my app'),
      ),
      body: Center(
          child: ColorPassing(
        counter: _counter,
        child: const CounterWidget(),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${ColorPassing.of(context).counter}",
      style: const TextStyle(fontSize: 50),
    );
  }
}
