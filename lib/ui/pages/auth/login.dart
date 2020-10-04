import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final FocusNode passwordField = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              const SizedBox(height: kToolbarHeight),
              Container(
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                width: 80.0,
                height: 80.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.red,
                child: Text("Continue with Google"),
                onPressed: () {},
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style: Theme
                          .of(context)
                          .textTheme
                          .display1,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(labelText: "Email Address"),
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(passwordField);
                      },
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      focusNode: passwordField,
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        child: Text("Login"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              OutlineButton(
                textColor: Colors.black,
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                onPressed: () {},
                color: Colors.white,
                borderSide: BorderSide(color: Colors.white),
                highlightColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
