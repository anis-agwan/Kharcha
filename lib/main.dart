import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: "t1", title: "New Shoes", amount: 69.69, date: DateTime.now()),
    Transaction(id: "t2", title: "New Shirt", amount: 39.69, date: DateTime.now()),
    Transaction(id: "t3", title: "New Joggers", amount: 29.69, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.blue,
            elevation: 5,
            child: Container(
              width: double.infinity,
                child: Text("Chart")
            ),
          ),
          Column(
            children: transactions.map(
                    (trx) => Card(
                      child: Text(trx.title),
            )).toList(),
          )
        ],
      )
    );
  }
}
