import 'package:flutter/material.dart';
import 'package:gymble/dummy_data.dart';
import 'package:gymble/models/meal.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../screens/schedule.dart';

class MembershipPage extends StatefulWidget {
  final String title;
  MembershipPage({
    this.title,
  });

  @override
  _MembershipPageState createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == widget.title);
    final categoryGymsTitle = gymId.title;
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Membership',
          style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        centerTitle: true,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: height * 0.8,
            child: Column(
              children: List.generate(
                gymId.membership.length,
                (index) => MembershipList(gymId: gymId, index: index),
              ),
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ScheduleScreen(title: categoryGymsTitle);
                    },
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFFFBD73),
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
          ),
        ],
      ),
    );
  }
}

class MembershipList extends StatefulWidget {
  final index;
  const MembershipList({
    Key key,
    @required this.index,
    @required this.gymId,
  }) : super(key: key);

  final Meal gymId;

  @override
  _MembershipListState createState() => _MembershipListState();
}

class _MembershipListState extends State<MembershipList> {
  //bool _selected = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // for(int i = 0; i < 4; i++) {
    //         if (i == widget.index) {
    //           widget.index.isSelected = true;
    //         } else {
    //           widget.index.isSelected = false;
    //         }
    //       }
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        //color: _selected ? Colors.redAccent : Colors.white,
        color: selectedIndex == widget.index ? Colors.redAccent : Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Container(
        child: InkWell(
          onTap: () {
            setState(() {
              selectedIndex = widget.index;
              //_selected = !_selected;
              //   for(int i = 0; i < 4; i++) {
              //   if (i == widget.index) {
              //     widget.index[i]._selected = true;
              //   } else {
              //     widget.index[i]._selected = false;
              //   }
              // }
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //_selected
                selectedIndex == widget.index
                    ? SvgPicture.asset(
                        'assets/icon/toggle_checked.svg',
                        color: Color(0xFFFFBD73),
                        height: 25,
                        width: 25,
                      )
                    : SvgPicture.asset(
                        'assets/icon/radio-button-off-unchecked.svg',
                        color: Colors.black,
                        height: 22,
                        width: 22,
                      ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.gymId.membership[widget.index],
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.black, fontSize: 25),
                ),
                SizedBox(
                  width: 140,
                ),
                Text(
                  '₹ ${widget.gymId.membershipPlans[widget.index]}/',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.black, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
