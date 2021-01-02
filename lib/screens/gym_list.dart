import 'package:flutter/material.dart';
import './tap_bar_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
class GymsList extends StatelessWidget {
  
  final String id;
  final String imageUrl;
  final String duration;
  final String title;
  final String affordability;
  final String description;
  GymsList({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.affordability,
    @required this.description,
  });
  void selectGym(BuildContext context) {
    Navigator.of(context).pushNamed(
      TabsScreen.routeName,
      arguments: {
        'duration': duration,
        'title': title,
        'imageUrl': imageUrl,
        'affordability': affordability,
        'description': description
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: <Widget>[
         // Text('Discover fittness',style: Theme.of(context).textTheme.headline4,),
          InkWell(
            onTap: () => selectGym(context),
            child: Card(
              //color: Colors.black.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          
                      // child:Image.network(
                      //       imageUrl,
                      //       height: 250,
                      //       width: double.infinity,
                      //       fit: BoxFit.cover,
                            
                      //     ),
                      child:Container(
                        child: CachedNetworkImage(
                              imageUrl: imageUrl,
                              fit: BoxFit.cover,
                              height: 250,
                              width: double.infinity,
                              fadeInDuration: Duration(milliseconds: 100),
                              fadeInCurve: Curves.easeIn,
                              placeholder: (context,url)=>Container(
                                child: Center(child: CircularProgressIndicator()),
                              ),
                              errorWidget: (context,url,error)=> Icon(Icons.error_outline),
                            ),
                      ),
                             ), 
                        Positioned(
                          bottom: 20,
                          right: 5,
                          child: Container(
                            width: 390,
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 30,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              title,
                              style: TextStyle(fontSize: 20, color: Colors.white),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 7,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontSize: 35),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '₹ $duration',
                                    style:
                                        Theme.of(context).textTheme.button.copyWith(
                                              fontSize: 25,
                                            ),
                                  ),
                                  Text(
                                    'per month',
                                    style: Theme.of(context)
                                        .textTheme
                                        .button
                                        .copyWith(
                                            fontSize: 15,
                                            color: Colors.grey.withOpacity(1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.location_on,
                                    size: 18, color: Colors.grey.withOpacity(1)),
                                Text(
                                  ' $affordability',
                                  style: Theme.of(context).textTheme.button.copyWith(
                                      fontSize: 20,
                                      color: Colors.grey.withOpacity(1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
