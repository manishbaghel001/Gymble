import 'package:flutter/material.dart';
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
            padding: EdgeInsets.only(
              top: 35,
              bottom: 0,
            ),
            height: height * 0.16,
            width: double.infinity,
            child: UpperMainPage(),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            height: height * 0.88,
            width: double.infinity,
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}
