import 'package:flutter/material.dart';
import '../constants.dart';

class RegisteredMenu extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Card(
          child: ListView(
            padding: EdgeInsets.all(1),
            children: <Widget>[
              Container(
                height: 200,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                        child: ListTile(
                          leading: Icon(Icons.person_pin_outlined),
                          title: Align(
                            child: new Text("  Jamee Shahriyar"),
                            alignment: Alignment(-1.5, 0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: ListTile(
                          leading: Icon(Icons.email_outlined),
                          title: Align(
                            child: new Text("  shahriyar@gmail.com"),
                            alignment: Alignment(-1.95, 0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: ListTile(
                          leading: Icon(Icons.pageview_rounded),
                          title: Align(
                            child: new Text("       ID:04"),
                            alignment: Alignment(-1.5, 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: buildListTiledrawer(
                    "Add Expense", Icons.add_circle_outline, context, 1),
              ),
              Card(
                child: buildListTiledrawer(
                    "Add Custom Category", Icons.add_circle, context, 2),
              ),
              Card(
                  child: buildListTiledrawer(
                      "View Expense", Icons.list, context, 3)),
              Card(
                child: buildListTiledrawer(
                    "Budget Limit", Icons.edit_sharp, context, 4),
              ),
              FractionallySizedBox(
                widthFactor: 0.4,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                    onPrimary: Colors.white,
                    onSurface: Colors.grey,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                  ),
                  child: Text('Sign Out'),
                 
                  onPressed: () async {
                          Navigator.popUntil(context, (route) => route.isFirst);
                          // Navigator.popUntil(context, ModalRoute.withName(premiumLoginRoute));
                        },
                ),
              )
            ],
          ),
        ),
      );
  }

  ListTile buildListTiledrawer(text, icon, BuildContext context, num) {
    return ListTile(
        leading: Icon(icon),
        title: Text(text),
        onTap: () async{
          if (num == 1) {
            Navigator.pushNamed(
              context,
              addExpenseRoute            
            );
          }
          if (num == 2) {
            Navigator.pushNamed(
              context,
              addCategoryRoute,              
            );
          }
          if (num == 3) {
            Navigator.pushNamed(
              context,
              viewExpenseRoute,              
            );
          }
          if (num == 4) {
            Navigator.pushNamed(
              context,
              viewBudgetLimitRoute             
            );
          }
        });
  }
}