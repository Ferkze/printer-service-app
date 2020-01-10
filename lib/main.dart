import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'main_store.dart';

final store = MainStore();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobx Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pushed this many times:'),
            Observer(
              builder: (_) => Text('${store.ledger.first.amount}',
                  style: Theme.of(context).textTheme.display1),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Increment',
        onPressed: () => store.ledger.first.setAmount(100),
      ),
    );
  }
}
