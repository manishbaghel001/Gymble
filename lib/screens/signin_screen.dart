import 'package:flutter/material.dart';
import 'package:gymble/screens/tabs_home_screen.dart';
import '../models/constants.dart';
import '../models/my_flutter_app_icons.dart';
import 'signup_screen.dart';
import '../widgets/forgot_password.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  void selectGymbleMainPage(BuildContext ctx)
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return TabsHomeScreen();
    },),);
  }
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              height:height*0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Hero.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
                          child: Container(
                height:height*0.5,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'SignIn',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          FittedBox(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SignUpScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'SignUp',
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.phonelink_lock_outlined,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            
                            child: TextField(
                              autocorrect: false,
                              obscureText: true,
                              textInputAction: TextInputAction.send,
                             // onChanged: onChanged,
                              cursorColor: kPrimaryColor,
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
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FittedBox(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ForgotPasswordScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'Forgot Password ?',
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    .copyWith(fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height:52,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Icon(
        
                              GoogleIcon.google,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: SvgPicture.asset('assets/icon/facebook.svg',color: Colors.white.withOpacity(0.5),height: 20,width: 20,),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: SvgPicture.asset('assets/icon/twitter.svg',color: Colors.white.withOpacity(0.5),height: 20,width: 20,),
                          ),
                         Spacer(),
                          FittedBox(
                              child: InkWell(
                                onTap: () => selectGymbleMainPage(context),
                                splashColor: kPrimaryColor,
                                borderRadius: BorderRadius.circular(15),
                              child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryColor,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                              ),
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
          ),
        ],
      ),
    );
  }
}
