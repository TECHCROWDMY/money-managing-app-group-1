import 'package:flutter/material.dart';
import 'package:money_manager/constants.dart';
import 'package:money_manager/screens/premiumUserRegistration.dart';
import 'package:money_manager/screens/registered_user_dash.dart';

class PremiumUserLogin extends StatefulWidget {
  @override
  _PremiumUserLoginState createState() => _PremiumUserLoginState();
}

class _PremiumUserLoginState extends State<PremiumUserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
              Image(
                image: AssetImage("images/logo.png"),
                width: 350.0,
                height: 200.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 60.0,
              ),
              Text(
                "Login as a Premium User",
                style: TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Brand Bold",
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "Brand Bold",
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),

                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "Brand Bold",
                        ),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),

                    SizedBox(
                      height: 30.0,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color: Colors.greenAccent[700],
                        textColor: Colors.white,
                        child: Container(
                          height: 50.0,
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 18.0, fontFamily: "Brand Bold"),
                            ),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(23.0),
                        ),
                        onPressed: () async {
                          Navigator.pushNamed(
                            context,
                            registeredDashRoute,
                            // arguments: 
                          );
                        })
                  ],
                ),
              ),

              SizedBox(
                height: 25.0,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    premiumRegistrationRoute,
                    // arguments: 
                  );
                },
                child: Text(
                  "Do not have an Account? Register Here.",
                  style: TextStyle(fontSize: 16.0, fontFamily: "Brand Bold", color: Colors.green[500]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
