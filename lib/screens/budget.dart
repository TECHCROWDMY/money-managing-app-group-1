import 'package:flutter/material.dart';
import 'package:money_manager/constants.dart';
import 'update_budget.dart';

class BudgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: (null),
        // ),
        title: Text('Money Manager'),
        centerTitle: true,
      ),
      //drawer: status? GuestMenu() : RegisteredMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text("Expense Budget",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ))),
            ListTile(),
            ListTile(),
            ListTile(
                title: Text("Current Expenditure:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                    ))),
            ListTile(
                title: Text("RM 150",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ))),
            ListTile(),
            ListTile(
                title: Text("Budget Limit:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                    ))),
            ListTile(
                title: Text("RM 250",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ))),
            ElevatedButton(
                child: Text('Update Budget Limit'),
                onPressed: () async {
                  Navigator.pushNamed(
                    context,
                    updateBudgetLimitRoute,
                    // arguments:
                      );
                })
          ],
        ),
      ),
    );
  }
}
