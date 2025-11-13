import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (_) => Counter(),
    child: MaterialApp(debugShowCheckedModeBanner: false, home: MyHome()),
  ),
);

class Counter extends ChangeNotifier {
  int count = 0;
  void inc() {
    count++;
    notifyListeners();
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int stateCount = 0;

  @override
  Widget build(BuildContext context) {
    final p = context.watch<Counter>();
    return Scaffold(
      appBar: AppBar(title: Text("setState vs Provider"), centerTitle: true, backgroundColor: Colors.purple),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            box("Stateful Widget", "Count: $stateCount", Colors.green, () => setState(() => stateCount++)),
            SizedBox(height: 20),
            box("Provider", "Count: ${p.count}", Colors.amber, p.inc),
          ],
        ),
      ),
    );
  }
}

Widget box(String title, String text, Color color, VoidCallback onPressed) => Container(
  width: 300,
  padding: EdgeInsets.all(12),
  color: color,
  child: Column(
    children: [
      Text(title),
      SizedBox(height: 8),
      Text(text),
      SizedBox(height: 8),
      ElevatedButton(onPressed: onPressed, child: Text("Click Me")),
    ],
  ),
);
