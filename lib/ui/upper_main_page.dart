import 'package:flutter/material.dart';
import 'package:gymble/ui/user_data.dart';
import '../models/constants.dart';
class UpperMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              children: <Widget>[
                //margin: EdgeInsets.symmetric(horizontal: 20,),
                Container(
                  padding: EdgeInsets.only(
                    right: 10,left: 10, top: 12
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FittedBox(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return UserData();
                                  },
                                ),
                              );
                            },
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 0,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 45,
                            color: kPrimaryColor,
                          ),
                        ),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 110,
                        ),
                        child: Text(
                          'Hi Manish',
                          style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: kPrimaryColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: Icon(
                          Icons.notifications_none,
                          size: 30,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: kPrimaryColor,
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Text(
                          'Kurukshetra University, Kurukshetra',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 20, color: Colors.white.withOpacity(0.5)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}