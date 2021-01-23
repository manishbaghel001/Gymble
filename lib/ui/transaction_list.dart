import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: transactions.isEmpty
          ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(),
                Container(
                  child: Text(
                    'No Timing added yet!',
                    //textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 25,color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  elevation: 6,
                  child: ListTile(
                     leading:SvgPicture.asset(
                        'assets/icon/green-check-mark.svg',
                        color: Colors.green.withOpacity(0.8),
                        height: 45,
                        width: 45,
                        
                      ), 
                    //CircleAvatar(
                    //   radius: 30,
                    //   child: Padding(
                    //     padding: EdgeInsets.all(6),
                    //     child: FittedBox(
                    //       child: Text(
                    //         '₹' + transactions[index].amount.toStringAsFixed(2),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMEd().format(transactions[index].date),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () => deleteTx(transactions[index].id),
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
