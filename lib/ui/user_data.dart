import 'package:flutter/material.dart';
import 'package:gymble/screens/signin_screen.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //title:Text('Profile'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: FittedBox(
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
                  child: Text('Logout',
                      style: Theme.of(context).textTheme.button.copyWith(
                            fontSize: 25,
                            color: Colors.red.withOpacity(0.7),
                          )),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Profile',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
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
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 70,
                    child: Icon(
                      Icons.person,
                      size: 100,
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
                    radius: 12,
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
          Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 30,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Manish Baghel',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 25),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  //color: Colors.grey,
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Text(
                    'manish20171999@gmail.com',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  //color: Colors.grey,
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Text(
                    'Male',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '9728859772',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                fontSize: 18,
                              ),
                        ),
                        Icon(
                          Icons.edit,
                          size: 20,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  //color: Colors.grey,
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Text(
                    'About gymble',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                  //color: Colors.grey,
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  child: Text(
                    'Contact us',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontSize: 18,
                        ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
