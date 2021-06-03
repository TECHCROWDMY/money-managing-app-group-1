import 'package:flutter/material.dart';
import 'package:money_manager/Widgets/guest_menu_widget.dart';
import 'package:money_manager/Widgets/registered_menu_widget.dart';

import 'DatePicker.dart';

class Category {
  String title;
  String value;

  Category(this.title, this.value);
}
// list of class Category
List<Category> categories = [
  Category('Empty', ''),
  Category('Food', 'fd'),
  Category('Grocery', 'grc'),
  Category('Entertainment', 'entm'),
];



class AddExpense extends StatefulWidget {
  @override
  AddExpenseState createState() => AddExpenseState();
}

class AddExpenseState extends State<AddExpense> {

  String categoryValue = '';
  bool status= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
                'Money Manager',
                style: TextStyle(fontSize: 20),
              ),
          centerTitle: true,
        ),
        //drawer: status? GuestMenu() : RegisteredMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 25.0),
                alignment: Alignment.topCenter,
                child: Text(
                  "Add Expense",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 25.0, 45.0, 0.0),
                  child: Text(
                    'Amount',
                    style: TextStyle(fontSize: 18.0),
                  ),),
                Container(
                    margin: EdgeInsets.fromLTRB(17.0, 35.0, 5.0, 2.0) ,
                    width: 150,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter amount here',
                        hintText: 'RM 0.00',
                      ),
                      autofocus: false,
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 25.0, 45.0, 0.0),
                  child: Text(
                    'Category',
                    style: TextStyle(fontSize: 18.0),
                  ),),
                  Card(
                  margin: EdgeInsets.fromLTRB(10.0, 30.0, 12.0, 20.0),
                  elevation: 2.0,
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                  child: DropdownButton<String>(
                  isExpanded: false,
                  value: categoryValue,
                  //? used to construct dropdown menu
                  items: categories
                      .map((Category category) => DropdownMenuItem(
                  child: Text(category.title),
                  value: category.value,
                  )).toList(),
                  onChanged: (newValue) {
                  setState(() {
                  categoryValue = newValue;
                     });
                   },
                    ),
                  )),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(90.0, 35.0, 5.0, 2.0) ,
                    width: 200,

                    child: FloatingActionButton.extended(
                       heroTag: 'select date',
                      onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          DatePickerClass()),),
                      label: Text('Select date'),
                      backgroundColor: Colors.indigo,
                    ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(90.0, 85.0, 5.0, 2.0) ,
              width: 200,
              
              child: FloatingActionButton.extended(
                onPressed: (){},
                heroTag: 'add expense',
                label: Text('Add Expense'),
                backgroundColor: Colors.indigo,
              ),
            ),
          ],
        ),
    );
  }
}

//--------------------DATE PICKER CLASS---------------------//
