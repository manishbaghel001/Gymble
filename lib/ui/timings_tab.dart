import 'package:flutter/material.dart';
import 'package:gymble/dummy_data.dart';

class TimingsTab extends StatelessWidget {
  final String title;
  TimingsTab({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == title);
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 15, left: 15,),
          alignment: Alignment.topLeft,
          child: Text('Slots Timings',
          style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.w500,color:Colors.white.withOpacity(0.9)),),
        ),
        Container(
          padding: EdgeInsets.only( left: 15,right: 15,),
          height: 300,
          child: GridView.builder(
            itemCount: gymId.timings.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1,
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 18,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return FittedBox(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5, horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF202020),
                    border: Border.all(color: Colors.white.withOpacity(0.7)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Container(
                  alignment: Alignment.center,
                    child: Text(
                    gymId.timings[index],
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.white.withOpacity(0.7), fontSize: 10),
                ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
