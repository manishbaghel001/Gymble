import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../ui/transaction_list.dart';

class TimelineScreen extends StatefulWidget {
  final String title;
  TimelineScreen({this.title});
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1',
        title: 'New transaction',
        amount: 69.69,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Another transaction',
        amount: 969.69,
        date: DateTime.now())
  ];
  void _addNewTransaction(
      String titleTx, double amountTx, DateTime chosenDate) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: titleTx,
      amount: amountTx,
      date: chosenDate,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  List<Transaction> get _recentTransactions {
    return _userTransaction.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _deleteTransactions(String id) {
    setState(() {
      _userTransaction.removeWhere((tx) => tx.id == id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20,bottom:10,left: 20),
               child: Text('Timeline',style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 40),),
              ),
              Container(
              child: TransactionList(_userTransaction, _deleteTransactions),
            ),
            ],
          ),
        ));
  }
}
