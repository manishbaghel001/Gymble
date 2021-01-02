import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
          ),
          padding: EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TopRow(),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25),
                child: Expanded(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      7,
                      (index) => DateRow(
                        index: index,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateRow extends StatefulWidget {
  final index;

  const DateRow({Key key, this.index}) : super(key: key);
  @override
  _DateRowState createState() => _DateRowState();
}

class _DateRowState extends State<DateRow> {
  var now = new DateTime.now();
  bool _selectDate = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectDate = !_selectDate;
        });
      },
      child: Container(
        // height: 80,
        // width: 70,
        padding: EdgeInsets.all(10),
        decoration: _selectDate
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              
        //
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Text(
              DateFormat('EE').format(now.add(Duration(days: widget.index))),
              style: Theme.of(context).textTheme.headline4.copyWith(
                  color: _selectDate
                      ? Colors.white.withOpacity(0.6)
                      : Colors.white,
                  fontSize: 20,
                  fontWeight: _selectDate ? null : FontWeight.bold),
            ),
            Text(
              DateFormat('dd').format(now.add(Duration(days: widget.index))),
              // '${now.day + widget.index}',
              style: Theme.of(context).textTheme.headline4.copyWith(
                  color: _selectDate
                      ? Colors.white.withOpacity(0.6)
                      : Colors.white,
                  fontSize: 20,
                  fontWeight: _selectDate ? null : FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _selectDate ? Colors.white.withOpacity(0.6) : Colors.white,
              ),
            )
          ],
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
              'Jan',
              style:
                  Theme.of(context).textTheme.headline4.copyWith(fontSize: 25),
            ),
          ],
        ),
      ],
    );
  }
}
