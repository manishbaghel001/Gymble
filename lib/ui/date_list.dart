import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateList extends StatefulWidget {
  final int selectedIndex;
  final BuildContext scheduleContext;
  final DateTime currentDate;
  final Function(int) onSelectTile;
  DateList({
    @required this.selectedIndex,
    @required this.scheduleContext,
    @required this.currentDate,
    @required this.onSelectTile,
  });

  @override
  _DateListState createState() => _DateListState();
}

class _DateListState extends State<DateList> {
  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    //var _select = false;
    return Container(
      height: 115.0, //MediaQuery.of(scheduleContext).size.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List<Container>.generate(
          7,
          (index) => Container(
            child: InkWell(
              onTap: () => widget.onSelectTile(index),
              child: Card(
                  color: widget.selectedIndex == index
                      ? Colors.red
                      : Colors.grey[500],
                  child: Container(
                    width:
                        MediaQuery.of(widget.scheduleContext).size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            DateFormat('dd')
                                .format(now.add(Duration(days: index))),
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                          ),
                          // Text(
                          //   currentDate
                          //               .add(Duration(days: index))
                          //               .day
                          //               .toString()
                          //               .length ==
                          //           1
                          //       ? '0' +
                          //           currentDate
                          //               .add(Duration(days: index))
                          //               .day
                          //               .toString()
                          //       : currentDate
                          //           .add(Duration(days: index))
                          //           .day
                          //           .toString(),
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.w400, fontSize: 42.0),
                          // ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            DateFormat('EE')
                                .format(now.add(Duration(days: index))),
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
// class DateList extends StatelessWidget {
//   var now = new DateTime.now();
//   //bool _selectDate = false;
//   //int _selectIndex = 0;
//   final int selectedindex;
//   final BuildContext scheduleContext;
//   final Function(int) changeIndex;
//   DateList({this.changeIndex, this.scheduleContext, this.selectedindex});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 25.0, bottom: 25),
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: List.generate(
//           7,
//           (index) => Container(
//             child: InkWell(
//               onTap: () => changeIndex(index),
//               child: Card(
//                 child: Container(
//                   //height: 80,
//                   //width: 55,

//                   padding: EdgeInsets.all(10),
//                   decoration: selectedindex==index
//                       ? null
//                       : BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.red,
//                         ),
//                   child: Column(
//                     //crossAxisAlignment: CrossAxisAlignment.start,

//                     children: <Widget>[
//                       Text(
//                         DateFormat('EE').format(now.add(Duration(days: index))),
//                         style: Theme.of(context).textTheme.headline4.copyWith(
//                             color: selectedindex==index
//                                 ? Colors.white.withOpacity(0.6)
//                                 : Colors.white,
//                             fontSize: 20,
//                             fontWeight: selectedindex==index ? null : FontWeight.bold),
//                       ),
//                       Text(
//                         DateFormat('dd').format(now.add(Duration(days: index))),
//                         // '${now.day + widget.index}',
//                         style: Theme.of(context).textTheme.headline4.copyWith(
//                             color: selectedindex==index
//                                 ? Colors.white.withOpacity(0.6)
//                                 : Colors.white,
//                             fontSize: 20,
//                             fontWeight: selectedindex==index ? null : FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Container(
//                         height: 5,
//                         width: 5,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: selectedindex==index
//                               ? Colors.white.withOpacity(0.6)
//                               : Colors.white,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
