import 'package:flutter/material.dart';

class OverviewTab extends StatelessWidget {
  final String title;
  final String duration;
  final String affordability;
  final String description;

  OverviewTab(
      {this.title, this.duration, this.description, this.affordability});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(title,style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 35),),
                Column(
                  children: <Widget>[
                    Text('₹ $duration',style: Theme.of(context).textTheme.button.copyWith(fontSize: 25,),),
                    Text('per month',style: Theme.of(context).textTheme.button.copyWith(fontSize: 15,color: Colors.grey.withOpacity(0.7)),),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 5,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_on,size: 18,color: Colors.grey.withOpacity(0.7)),
                  Text(' $affordability',style: Theme.of(context).textTheme.button.copyWith(fontSize: 20,color: Colors.grey.withOpacity(0.7)),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10,left:15, ),
              child:Text('Description',style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 20,color: Colors.grey.withOpacity(0.7)),),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 5, bottom: 15, left: 5,right: 5
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.7))),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 15,),
              child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$description',
                            style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 16,color: Colors.white.withOpacity(0.65),),
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
