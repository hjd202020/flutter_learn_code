
import 'package:flutter/material.dart' hide Page;
import 'routes.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _generateItem(BuildContext context, List<Page> children) {
    return children.map<Widget>((page) {
      return ListTile(
        title: Text(page.title),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => page.openPage(context),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fundamentals of mobile application development'),
        ),
        body: ListView(
          children: <Widget>[
            ExpansionTile(
              title: const Text("Chapter01"),
              children: _generateItem(context, [
                Page("Counter", const CounterPage(), withScaffold: false),
              ]),
            ),
          ],
        ));
  }
}
