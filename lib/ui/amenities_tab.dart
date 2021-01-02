import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gymble/dummy_data.dart';
class AmenitiesTab extends StatelessWidget {
  final String title;
  AmenitiesTab({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == title);
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          height: height*0.35,
          child: GridView.builder(
            itemCount: gymId.amenitiesImageUrl.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1,
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                // In future use inkWell to extend the amenities
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl: gymId.amenitiesImageUrl[index],
                            fit: BoxFit.cover,
                            height: 116,
                            width: 116,
                            fadeInDuration: Duration(milliseconds: 100),
                            fadeInCurve: Curves.easeIn,
                            placeholder: (context,url)=>Container(
                              child: Center(child: CircularProgressIndicator()),
                            ),
                            errorWidget: (context,url,error)=> Icon(Icons.error_outline),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            width: 105,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              gymId.steps[index],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(1)),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// Widget _loader(BuildContext context, String url) {
//   return Center(
//     child: CircularProgressIndicator(),
//   );
// }

// Widget _error(BuildContext context, String url, dynamic error) {
//   print('error');
//   return Center(
//     child: Icon(Icons.error_outline),
//   );
// }
