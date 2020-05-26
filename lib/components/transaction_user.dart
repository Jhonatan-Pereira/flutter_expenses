import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'conta de luz',
      value: 350.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'conta de telefone',
      value: 120.30,
      date: DateTime.now(),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm()
      ],
    );
  }
}