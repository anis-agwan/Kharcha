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
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.purple, width: 2
                              )
                            ),
                            child: Text(
                              trx.amount.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  trx.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                  trx.date.toString(),
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              )
                            ],
                          )
                        ],
                      ),
            )).toList(),
          )
        ],
      )
    );
  }
}
