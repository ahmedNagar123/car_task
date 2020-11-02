import 'package:flutter/material.dart';

import 'bubble.dart';

class BuildRow extends StatefulWidget {
  @override
  _BuildRowState createState() => _BuildRowState();
}

class _BuildRowState extends State<BuildRow> {
  int counter = 12;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(
              Icons.format_align_left,
              color: Colors.white,
              size: 25,
            ),
          ),
          Bubble(
              color: Colors.deepOrange,
              value: counter,
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
              ))
        ],
      ),
    );
  }
}
