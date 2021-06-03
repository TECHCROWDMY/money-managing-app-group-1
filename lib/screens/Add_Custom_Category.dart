import 'package:flutter/material.dart';
import 'package:money_manager/Widgets/registered_menu_widget.dart';



class CustomExpenseCategory extends StatefulWidget {
  @override
  CustomExpenseCategoryState createState() => CustomExpenseCategoryState();
}

class CustomExpenseCategoryState extends State<CustomExpenseCategory> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: <Widget>[
            Text(
              'Add Custom Category',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: RegisteredMenu(), 
      body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(70.0, 35.0, 5.0, 40.0) ,
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Custom Category',
                      hintText: 'Food, laundry,other expenses...',
                    ),
                    autofocus: false,
                  )),

              Container(
                margin: EdgeInsets.fromLTRB(60.0, 35.0, 5.0, 20.0) ,
                width: 150,
                child: FloatingActionButton.extended(
                  onPressed: (){},
                  label: Text('Add Category'),
                  backgroundColor: Colors.indigo,
                ),
              ),
            ],
          ),
      );
  }
}

//--------------------DATE PICKER CLASS---------------------//
