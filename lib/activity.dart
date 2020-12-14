import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Activity extends StatelessWidget {
  final String name;
  final int duration;
  final ColorSwatch color;

  const Activity({
    @required this.name,
    @required this.duration,
    @required this.color,
  })  : assert(name != null || name != ''),
        assert(duration != null || duration <= 0),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    final heading = FittedBox(
      child: Text(
        name,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );

    final durationW = FittedBox(
      child: Text(duration.toString()),
    );

    final col = Column(
      children: [heading, durationW],
    );

    return Container(
      child: col,
    );
  }
}
