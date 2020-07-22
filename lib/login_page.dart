import 'package:flutter/material.dart';
import 'package:customer_service/main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          'Customer Service Demo'
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
          color: Colors.grey
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
        ),
      ),
    );
  }
}
