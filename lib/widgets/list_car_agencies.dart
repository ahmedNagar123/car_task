import 'package:flutter/material.dart';
import 'package:task_app/constant/const.dart';
import 'package:task_app/modules/car.dart';

import 'agence_item.dart';

class ListCarAgencies extends StatelessWidget {
  const ListCarAgencies({
    Key key,
    @required this.height,
    @required this.title,
  }) : super(key: key);

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    final hei = height * .32;
    final h = hei * .82;

    List<Car> displayAgencies = Agencies().items;
    return Container(
      padding: EdgeInsets.only(top: 5),
      width: double.infinity,
      height: hei,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: hei * .15,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: kTextStyle,
                  ),
                  Text(
                    'الكل',
                    style: kTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return ListItemAgencies(
                  image: displayAgencies[index].image,
                  name: displayAgencies[index].name,
                  price: displayAgencies[index].price,
                  height: h,
                );
              },
              itemCount: displayAgencies.length,
            ),
          )
        ],
      ),
    );
  }
}
