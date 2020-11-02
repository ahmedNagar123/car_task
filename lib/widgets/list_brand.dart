import 'package:flutter/material.dart';
import 'package:task_app/constant/const.dart';
import 'package:task_app/modules/car.dart';

import 'list_item_brand.dart';

class ListCarBrand extends StatelessWidget {
  const ListCarBrand({
    Key key,
    @required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    List<Car> displayBrand = Brand().items;
    final hei = height * .17;
    final h = hei * .6;
    return Container(
      padding: EdgeInsets.only(top: 5),
      width: double.infinity,
      height: hei,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: hei * .3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'تصفح حسب الماركة',
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
            width: double.infinity,
            height: h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return ListItemBrand(
                  image: displayBrand[index].image,
                );
              },
              itemCount: displayBrand.length,
            ),
          )
        ],
      ),
    );
  }
}
