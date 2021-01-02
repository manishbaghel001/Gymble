import 'package:flutter/material.dart';
import 'package:gymble/ui/amenities_tab.dart';
import 'package:gymble/ui/overview_tab.dart';
import 'package:gymble/ui/timings_tab.dart';
import '../models/constants.dart';
import 'package:gymble/ui/trainers_tab.dart';
import '../widgets/membership.dart';
import '../dummy_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';

class TabsScreen extends StatelessWidget {
  static const routeName = '/gyms_details';
  @override
  Widget build(BuildContext context) {
    final mealId =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryGymsTitle = mealId['title'];
    //final categoryGymsImagerUrl = mealId['imageUrl'];
    final categoryGymsIaffordability = mealId['affordability'];
    final categoryGymsdescription = mealId['description'];
    final categoryGymsDuration = mealId['duration'];
    final gymId =
        DUMMY_MEALS.firstWhere((gym) => gym.title == categoryGymsTitle);
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    //final width = MediaQuery.of(context).size.width;
    final img1 = gymId.amenitiesImageUrl[0];
    final img2 = gymId.amenitiesImageUrl[1];
    final img3 = gymId.amenitiesImageUrl[2];
    final img4 = gymId.amenitiesImageUrl[3];
    final img5 = gymId.amenitiesImageUrl[4];
    final img6 = gymId.amenitiesImageUrl[5];
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('$categoryGymsTitle'),
          centerTitle: true,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          // leading: Icon(
          //   Icons.menu,
          // ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: height * 0.35,
              width: double.infinity,
              child: Carousel(
                images: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img1,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img2,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img3,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img4,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img5,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                    child: CachedNetworkImage(
                      imageUrl: img6,
                      fit: BoxFit.cover,
                      fadeInDuration: Duration(milliseconds: 100),
                      fadeInCurve: Curves.easeIn,
                      placeholder: _loader,
                      errorWidget: _error,
                    ),
                  ),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: kPrimaryColor,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.purple.withOpacity(0),
                borderRadius: true,
              ),
            ),

            // SizedBox(
            //   height: 300,
            //   child: Container(
            //     height: 350,
            //     width: double.infinity,
            //     child: Image.network(
            //       categoryGymsImagerUrl,
            //       height: 250,
            //       width: double.infinity,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: AppBar(
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Overview',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18.5,
                              color: Colors.black,
                            ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Amenities',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18.5,
                              color: Colors.black,
                            ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Trainers',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18.5,
                              color: Colors.black,
                            ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Timings',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18.5,
                              color: Colors.black,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.45,
              child: Expanded(
                child: TabBarView(
                  children: <Widget>[
                    OverviewTab(
                      title: categoryGymsTitle,
                      duration: categoryGymsDuration,
                      description: categoryGymsdescription,
                      affordability: categoryGymsIaffordability,
                    ),
                    AmenitiesTab(title: categoryGymsTitle),
                    TrainersTab(title: categoryGymsTitle),
                    TimingsTab(title: categoryGymsTitle),
                  ],
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
                        return MembershipPage(title: categoryGymsTitle);
                      },
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Get Membership',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _loader(BuildContext context, String url) {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget _error(BuildContext context, String url, dynamic error) {
  print('error');
  return Center(
    child: Icon(Icons.error_outline),
  );
}
