import 'package:flutter/material.dart';
import '../screens/signin_screen.dart';
class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/Hero.jpg'),
                fit: BoxFit.cover,
              )),
            )),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  //stops: [0.6,0.3],
                  colors: [Color(0xFF20090e), Color(0xFF202020)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // RichText(
                  //   text: TextSpan(
                  //     children: [
                  //       TextSpan(
                  //         text: 'Gymble',
                  //         style: Theme.of(context).textTheme.headline4,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                    child: Image.asset('assets/gymbolicon.png'),
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
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 35,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFe72c45),
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Start Training',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
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