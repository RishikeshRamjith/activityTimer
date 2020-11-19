import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'activity.dart';

class Home extends StatefulWidget {
  const Home();

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<Home> {
  Activity _currentActivity;
  Activity _defaultActivity;
  final _activityList = <Activity>[];

  Activity act_0 = Activity(name: 'read', duration: 10, color: Colors.amber);

  @override
  void initState() {
    super.initState();
    _activityList.add(act_0);
    _defaultActivity = _activityList[0];
    _currentActivity = _activityList[0];
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Timer',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: _currentActivity.color,
              displayColor: _currentActivity.color),
          primaryColor: _currentActivity.color,
          scaffoldBackgroundColor: _currentActivity.color,
        ),
        home: Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(_currentActivity.name),
                Text(_currentActivity.duration.toString()),
              ],
            )));
  }
}
