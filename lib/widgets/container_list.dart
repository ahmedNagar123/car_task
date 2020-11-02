import 'package:flutter/material.dart';
import 'package:task_app/constant/const.dart';
import 'package:task_app/modules/car.dart';

import 'list_item_type.dart';

class ListCarType extends StatelessWidget {
  const ListCarType({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    List<Car> displayCar = Cars().items;
    final hei = height * .18;
    final h = hei * .7;
    return Container(
      padding: EdgeInsets.only(top: 3),
      width: double.infinity,
      height: hei,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: hei * .2,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                'تصفح حسب نوع السيارة',
                style: kTextStyle,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return ListItem(
                  image: displayCar[index].image,
                  name: displayCar[index].name,
                  height: h,
                );
              },
              itemCount: displayCar.length,
            ),
          )
        ],
      ),
    );
  }
}
