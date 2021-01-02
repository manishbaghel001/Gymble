import 'package:flutter/material.dart';
import '../models/constants.dart';
import 'signin_screen.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
                height: 890,
                //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                padding: EdgeInsets.symmetric(vertical: 50,),
                child: Column(
                  children:<Widget>[
                      Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: CircleAvatar(
                      backgroundColor: kBackgroundColor,
                      radius: 60,
                      child: Icon(
                        Icons.person,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.home,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            
                            child: TextField(
                              textCapitalization: TextCapitalization.words,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),),
                            // enabledBorder: OutlineInputBorder(
                            //     borderSide: BorderSide(color: Colors.red),
                            // ),
                                hintText: 'Your Name',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.alternate_email,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),),
                                hintText: 'Email Address',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.mobile_screen_share,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),),
                                hintText: 'Mobile No.',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.lock_outline,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              autocorrect: false,
                              cursorColor: kPrimaryColor,
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                     Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.lock_outline,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              autocorrect: false,
                              obscureText: true,
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kPrimaryColor),),
                                hintText: 'Repeat Password',
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
                              EdgeInsets.symmetric(horizontal: 50, vertical: 13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Sign Up',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(color: Colors.black,fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text('Already have an account ')
                          ),
                          FittedBox(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignInScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'SignIn',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ],
                ),
              ),
      ),
    );
  }
}