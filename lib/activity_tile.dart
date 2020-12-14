import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'activity.dart';
import 'package:meta/meta.dart';

class ActivityTile extends StatelessWidget {
  final Activity activity;

  const ActivityTile({
    @required this.activity,
  }) : assert(activity != null);

  @override
  Widget build(BuildContext context) {
    final name = Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          activity.name,
          style: TextStyle(fontSize: 20),
        ));
    final duration = Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          activity.duration.toString(),
          style: TextStyle(fontSize: 20),
        ));

    return Padding(
        padding: EdgeInsets.all(1.5),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: InkWell(
              onTap: print("Pressed"),
              child: Row(
                children: [name, duration],
              ),
            )));
  }
}
