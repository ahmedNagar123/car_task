import 'package:flutter/material.dart';
import 'package:task_app/constant/const.dart';

class ListItemAgencies extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final double height;

  const ListItemAgencies(
      {Key key, this.image, this.name, this.price, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
      height: height * .8,
      width: 350,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: GridTile(
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            footer: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(1)),
              height: height * .2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      name,
                      style: kTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'تبدأ من ',
                          style: kTextStyle,
                        ),
                        Text(price),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
