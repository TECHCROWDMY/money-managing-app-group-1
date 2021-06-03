import 'package:flutter/material.dart';

class ViewExpense extends StatefulWidget {
  @override
  _DatePicker createState() => _DatePicker();
}

class _DatePicker extends State<ViewExpense> {
  DateTime startDate;
  DateTime endDate;

  @override
  void initState() {
    super.initState();
    startDate = DateTime.now();
    endDate = DateTime.now();
  }

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
                title: Text("View Expenses",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold))),
            ListTile(
              title: Text(
                  "Start Date: ${startDate.day}/ ${startDate.month}/ ${startDate.year}"),
              trailing: Icon(Icons.date_range),
              onTap: _startDate,
            ),
            ListTile(
              title: Text(
                  "End Date: ${endDate.day}/ ${endDate.month}/ ${endDate.year}"),
              trailing: Icon(Icons.date_range),
              onTap: _endDate,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Find"),
            )
          ],
        ),
      ),
    );
  }

  void _startDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10));

    if (date != null) {
      setState(() {
        startDate = date;
      });
    }
  }

  void _endDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10));

    if (date != null) {
      setState(() {
        endDate = date;
      });
    }
  }
}
