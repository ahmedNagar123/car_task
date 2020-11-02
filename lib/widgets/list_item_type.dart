import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/constant/const.dart';

class ListItem extends StatelessWidget {
  final String image;
  final String name;
  final double height;

  const ListItem({Key key, this.image, this.name, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height * .75,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, left: 5, bottom: 2, right: 2),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: height * .25,
          child: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              name,
              style: kTextListStyle,
            ),
          ),
        )
      ],
    );
  }
}
