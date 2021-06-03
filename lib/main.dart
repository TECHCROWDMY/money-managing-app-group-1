import 'package:flutter/material.dart';
import 'package:money_manager/router.dart';
import 'package:money_manager/screens/Add_Custom_Category.dart';
import 'package:money_manager/screens/Add_Expense.dart';
import 'package:money_manager/screens/budget.dart';
import 'package:money_manager/screens/guest_user_dash.dart';
import 'package:money_manager/screens/mainScreen.dart';
import 'package:money_manager/screens/premiumUserLogin.dart';
import 'package:money_manager/screens/premiumUserRegistration.dart';
import 'package:money_manager/screens/registered_user_dash.dart';
import 'package:money_manager/screens/update_budget.dart';
import 'package:money_manager/screens/view_expense.dart';

import 'constants.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter_navigation_sample",
    theme: ThemeData(primarySwatch: Colors.indigo),
    //  home: GuestUserDash()
    //  home: RegisteredUserDash()
     //home: MainScreen()
    // home: PremiumUserLogin()
    // home: PremiumUserRegistration()
    //  home: CustomExpenseCategory()
        // home : AddExpense()
        // home: BudgetPage(),
        // home: UpdateBudget(),
        // home: ViewExpense(),

     initialRoute: homeRoute,
     onGenerateRoute: createRoute,
    ));
