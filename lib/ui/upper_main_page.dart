import 'package:flutter/material.dart';
import 'package:gymble/ui/user_data.dart';

class UpperMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height -
    //     MediaQuery.of(context).padding.top -
    //     kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  right: 10,left: 10, top: 10
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
                        child: Icon(
                          Icons.person,
                          size: 45,
                          color: Color(0xFFFFBD73),
                        ),
                      ),
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
                        color: Color(0xFFFFBD73),
                      ),
                    ),
                    Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Color(0xFFFFBD73),
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
                      color: Color(0xFFFFBD73),
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
              Padding(
                padding: EdgeInsets.only(top: 5,left: 15,bottom: 0,),
                child:Text('Discover Fittness',style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white.withOpacity(0.5)),),
                ),
            ],
          );
  }
}