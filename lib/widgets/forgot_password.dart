import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70,left: 25,bottom: 20,),
            child: Text('Recover Password',
            style: Theme.of(context).textTheme.headline4,),
          ),
          Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.alternate_email,
                            color: Color(0xFFFFBD73),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email Address',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  FittedBox(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 160, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFFBD73),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Proceed',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.black,fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                  ),
        ],
      ),
    );
  }
}