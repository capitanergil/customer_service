import 'package:customer_service/Shared/Paddings.dart';
import 'package:flutter/material.dart';

class BuildingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            Image(
              width: 120,
              height: 147,
              image: AssetImage('images/addbuildingicon.png'),
            ),
            Paddings.verticalSpaceSmall,

            // Address Line 1 için TextField
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  hintText: 'Address Line 1'),
            ),
            Paddings.verticalSpaceSmall,

            // Address Line 2 için TextField
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  hintText: 'Address Line 2'),
            ),
            Paddings.verticalSpaceSmall,

            // Daire Sayisi için TextField
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black45)),
                  hintText: 'Daire Sayisi'),
            ),
            Paddings.verticalSpaceLarge,

          // Tapu yukleme icin dugme ve baslik
            Center(child: Text('Add Proof as PDF', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline),
              iconSize: 40,
            )
          ]),
        ),
      ),
    ));
  }
}
