import 'package:flutter/material.dart';
import 'package:gymble/dummy_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
class TrainersTab extends StatelessWidget {
  final String title;
  TrainersTab({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == title);
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          height: 355,
          child: GridView.builder(
            itemCount: gymId.trainersImgUrl.length ,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1,
              maxCrossAxisExtent: 190,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: Card(
                    // In future use inkWell to extend the amenities
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape:
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    elevation: 5,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              // child: Image.network(
                              //   gymId.trainersImgUrl[index],
                              //   fit: BoxFit.cover,
                              //   height: 140,
                              //   width: 185,
                              // ),
                              child:Container(
                              height: 142,
                              width: MediaQuery.of(context).size.width,
                              child:CachedNetworkImage(
                              imageUrl: gymId.trainersImgUrl[index],
                              fit: BoxFit.fill,
                              //  height: 140,
                              //  width: 185,
                              fadeInDuration: Duration(milliseconds: 100),
                              fadeInCurve: Curves.easeIn,
                              placeholder: (context,url)=>Container(
                                child: Center(child: CircularProgressIndicator()),
                              ),
                              errorWidget: (context,url,error)=> Icon(Icons.error_outline),
                            ),
                      ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          child: Column(
                            children: <Widget>[
                              Text('${gymId.trainersName[index]}',style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 17,)),
                        Text('${gymId.trainersGender[index]} Trainer',style: Theme.of(context).textTheme.headline4.copyWith(fontSize: 15, fontStyle: FontStyle.italic,color:Colors.white.withOpacity(0.7),),),
                            ],
                          ),
                        ),
                      ],
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
