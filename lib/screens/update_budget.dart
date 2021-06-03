import 'package:flutter/material.dart';

class UpdateBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text('Money Manager'),
        centerTitle: true,
      ),
      //drawer: status? GuestMenu() : RegisteredMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text("Update Budget Limit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ))),
            ListTile(),
            ListTile(),
            ListTile(
                title: Text("Current Budget Limit:",
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
                title: Text("Enter New Budget Limit:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 23,
                    ))),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'RM 50.00'),
                
              ),
            ),
            ElevatedButton(
                child: Text('Update'),
                onPressed: () =>Navigator.pop(context,null))
          ],
        ),
      ),
    );
  }
}
