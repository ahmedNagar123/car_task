import 'package:flutter/material.dart';
import 'package:task_app/widgets/container_list.dart';
import 'package:task_app/widgets/list_brand.dart';
import 'package:task_app/widgets/list_car_agencies.dart';
import 'package:task_app/widgets/row_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * .23,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/audi_a8.jpg'),
                fit: BoxFit.cover,
              )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BuildRow(),
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            ListCarType(
              height: height,
            ),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            ListCarBrand(height: height),
            Divider(
              height: 2,
              color: Colors.grey,
            ),
            ListCarAgencies(
              height: height,
              title: 'جديد الوكالات',
            ),
            ListCarAgencies(
              height: height,
              title: 'فيديو',
            ),
            // ListCarAgencies(
            //   height: height,
            // ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.indigo,
      items: [
        BottomNavigationBarItem(
          icon: Image(
            color: Colors.white,
            image: AssetImage(
              'images/car_icon.png',
            ),
          ),
          label: 'الوكالات',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.car_rental,
            color: Colors.white,
          ),
          label: 'الخدمات',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.car_repair,
              color: Colors.white,
            ),
            label: 'التثمين'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_car_wash_outlined,
              color: Colors.white,
            ),
            label: 'التأمين'),
      ],
      unselectedFontSize: 16,
      iconSize: 30,
      selectedFontSize: 16,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
    );
  }
}
