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
  Activity act_1 = Activity(name: 'run', duration: 11, color: Colors.blue);

  @override
  void initState() {
    super.initState();
    _activityList.add(act_0);
    _activityList.add(act_1);
    _defaultActivity = _activityList[0];
    _currentActivity = _activityList[1];
  }

  Widget _buildActivityWidgets() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _activityList[index],
      itemCount: _activityList.length,
    );
  }

  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: _currentActivity.color,
      elevation: 0,
    );

    //final
    return Scaffold(
      backgroundColor: _currentActivity.color,
      appBar: appBar,
      drawer: Drawer(
        child: _buildActivityWidgets(),
      ),
    );
  }
}
