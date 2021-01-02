import 'package:flutter/material.dart';
import 'package:gymble/dummy_data.dart';
import '../models/constants.dart';

class MembershipPage extends StatelessWidget {
  final String title;
  MembershipPage({
    this.title,
  });
  final bag = {"first": false};

  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == title);
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Membership')),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: height * 0.8,
            child: ListView.builder(
              itemBuilder: (ctx, index) => Card(
                margin: EdgeInsets.symmetric(vertical: 15),
                color: bag["first"] ? Colors.red : Colors.white,
                child: InkWell(
                  onTap: () {
                    bag["first"] = !bag["first"];
                    
                    (context as Element).markNeedsBuild();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          gymId.membership[index],
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          '₹ ${gymId.membershipPlans[index]}/',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: gymId.membership.length,
            ),
          ),
          FittedBox(
            // child: GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return MembershipPage(title:categoryGymsTitle);
            //         },
            //       ),
            //     );
            //   },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kPrimaryColor,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    'Buy Now',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: Colors.black,
                          fontSize: 27,
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
