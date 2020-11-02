import 'package:flutter/material.dart';

class ListItemBrand extends StatelessWidget {
  final String image;

  const ListItemBrand({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black12, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
