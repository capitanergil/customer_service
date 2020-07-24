import 'package:flutter/material.dart';
import 'package:customer_service/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color.fromRGBO(10, 223, 104, 1),
          title: Text('Customer Service', style: TextStyle(color: Colors.white),),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.black
                                )
                              ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.black45
                                    )
                                ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.red)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.black45)
                              ),
                              hintText: 'Username'
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.black45
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.red)
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(color: Colors.black45)
                                ),
                                hintText: 'Password'
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: RaisedButton(
                            elevation: 10,
                            onPressed: () {
                              // Validate returns true if the form is valid, or false
                              // otherwise.
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Scaffold.of(context).showSnackBar(
                                    SnackBar(content: Text('Processing Data')));
                              }
                            },
                            color: Theme.of(context).accentColor,
                            child: Text('Submit', style: TextStyle(color: Colors.white),),

                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        ));
  }
}
