import 'package:flutter/material.dart';
import 'package:gymble/models/meal.dart';
import '../dummy_data.dart';
import './gym_list.dart';
import '../ui/upper_main_page.dart';

class MainPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryGyms = DUMMY_MEALS;
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 25),
            //color: Colors.red,
            height: height * 0.205,
            width: double.infinity,
            child: UpperMainPage(),
          ),
          MiddleMainPage(height: height, categoryGyms: categoryGyms),
        ],
      ),
    );
  }
}

class MiddleMainPage extends StatelessWidget {
  const MiddleMainPage({
    Key key,
    @required this.height,
    @required this.categoryGyms,
  }) : super(key: key);

  final double height;
  final List<Meal> categoryGyms;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7,
      ),
      height: height * 0.838,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.all(0.0),
        itemBuilder: (ctx, index) {
          return GymsList(
            affordability: categoryGyms[index].affordability,
            description: categoryGyms[index].description,
            title: categoryGyms[index].title,
            id: categoryGyms[index].id,
            imageUrl: categoryGyms[index].imageUrl,
            duration: categoryGyms[index].duration,
          );
        },
        itemCount: categoryGyms.length,
      ),
    );
  }
}
