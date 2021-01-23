import 'package:flutter/material.dart';
import 'package:gymble/ui/date_list.dart';
import 'package:gymble/dummy_data.dart';
import 'package:intl/intl.dart';
import '../models/meal.dart';

class ScheduleScreen extends StatefulWidget {
  final String title;
  ScheduleScreen({this.title});

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime currentDate = DateTime.now();
  bool selectedBook = true;
  int _selectedindex = 0;
  String _selectedDay = DateTime.now().day.toString();
  bool inProcess = false;

  void changeIndex(int index) {
    _selectedindex = index;
    changeDate(index);
  }

  void changeDate(int index) {
    _selectedDay = currentDate.add(Duration(days: index)).day.toString();
    setState(() {
      _selectedindex = _selectedindex;
      _selectedDay = _selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    final gymId = DUMMY_MEALS.firstWhere((gym) => gym.title == widget.title);
    final categoryGymsTitle = gymId.title;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              padding:
                  EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TopRow(),
                  DateList(
                    scheduleContext: context,
                    onSelectTile: (int index) => changeIndex(index),
                    currentDate: currentDate,
                    selectedIndex: _selectedindex,
                  ),
                ],
              ),
            ),
            selectedBook
                ? TimelineWidget(
                    widget: widget,
                    gymId: gymId,
                    categoryGymsTitle: categoryGymsTitle,
                    selectedBook: selectedBook)
                : BookSlot(categoryGymsTitle: categoryGymsTitle)
          ],
        ),
      ),
    );
  }
}

class BookSlot extends StatelessWidget {
  const BookSlot({
    Key key,
    @required this.categoryGymsTitle,
  }) : super(key: key);

  final String categoryGymsTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 192,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.pink,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 0, left: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          categoryGymsTitle,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    fontSize: 18,
                                    color: Colors.white.withOpacity(0.7)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Manish baghel',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Slot',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              fontSize: 18,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text('09:30 am',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      fontSize: 20,
                                      color: Colors.white,
                                    )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 280,
              width: 192,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                      child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pink,
                    ),
                    child: Text(
                      'Check-in',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontSize: 22),
                    ),
                  )),
                  FittedBox(
                      child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Cancel slot?',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontSize: 18),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimelineWidget extends StatelessWidget {
  const TimelineWidget(
      {Key key,
      @required this.widget,
      @required this.gymId,
      @required this.categoryGymsTitle,
      @required this.selectedBook})
      : super(key: key);

  final ScheduleScreen widget;
  final Meal gymId;
  final String categoryGymsTitle;
  final bool selectedBook;

  @override
  Widget build(BuildContext context) {
    bool _selectSlots = selectedBook;
    bool _selectSlot = true;
    String stringTime;
    DateTime now = DateTime.now();
    DateTime _thisTime = DateFormat('Hm').parse(stringTime);
    if (now.isAfter(_thisTime)) {
      _selectSlot = !_selectSlot;
    }
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white.withOpacity(0.9)),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '29 days left',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: 20, color: Colors.white.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 5, left: 10),
            child: Row(
              children: [
                Text('Available Slots',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontSize: 35, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            height: 355,
            child: GridView.builder(
              itemCount: gymId.timings.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 3 / 2,
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 15,
                mainAxisSpacing: 0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return SlotTimings(
                  gymId: gymId,
                
                  index: index,
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: <Widget>[
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    _selectSlots = selectedBook;
                    print(selectedBook);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFFFBD73),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Book',
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
        ],
      ),
    );
  }
}

class SlotTimings extends StatefulWidget {

  const SlotTimings({Key key, @required this.gymId, @required this.index})
      : super(key: key);
  final index;
  final Meal gymId;
  @override
  _SlotTimingsState createState() => _SlotTimingsState();
}

class _SlotTimingsState extends State<SlotTimings> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
      },
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: _selected ? Colors.green : Color(0xFF202020),
            border: Border.all(color: Colors.white.withOpacity(0.7)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              widget.gymId.timings[widget.index],
              style: Theme.of(context).textTheme.button.copyWith(
                    color: _selected
                        ? Colors.white
                        : Colors.white.withOpacity(0.7),
                    fontSize: 10,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Schedule',
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(fontSize: 38, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: <Widget>[
            Text(
              DateFormat('MMM').format(now),
              style:
                  Theme.of(context).textTheme.headline4.copyWith(fontSize: 25),
            ),
          ],
        ),
      ],
    );
  }
}
