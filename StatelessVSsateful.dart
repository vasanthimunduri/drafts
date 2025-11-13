import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyHome(),
));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.blue,
    appBar: AppBar(
      backgroundColor: Colors.purple,
      title: Text("Stateless vs Stateful"),
      centerTitle: true,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        box("Stateless Widget", "Data never changes (immutable)", Colors.grey, null),
        SizedBox(height: 20),
        StatefulBox(),
      ],
    ),
  );
}

class StatefulBox extends StatefulWidget {
  @override
  State<StatefulBox> createState() => _StatefulBoxState();
}

class _StatefulBoxState extends State<StatefulBox> {
  int count = 0;
  @override
  Widget build(BuildContext context) => box(
    "Stateful Widget", "Count: $count", Colors.grey,
    () => setState(() => count++),
  );
}

Widget box(String title, String text, Color color, VoidCallback? onPressed) => Container(
  width: 300,
  padding: EdgeInsets.all(12),
  color: color,
  child: Column(
    children: [
      Text(title),
      SizedBox(height: 8),
      Text(text),
      if (onPressed != null) ...[
        SizedBox(height: 8),
        ElevatedButton(onPressed: onPressed, child: Text("Click Me")),
      ],
    ],
  ),
);
