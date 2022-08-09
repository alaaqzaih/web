import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_web_dashboard/constant.dart';
import 'package:travel_web_dashboard/model.dart/responsive.dart';

import 'component/profilecard.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (!Responsive.isMobile(context)) ProfileCard(),
                  SizedBox(
                    height: 20,
                  ),
                  Responsive(
                      mobile:
                          _size.width <= 420 ? SchudleCardMob() : SchudleCard(),
                      desktop: SchudleCard()),
                  Divider(
                    thickness: 4,
                    color: kBgColor,
                  ),
                  Responsive(
                      mobile:
                          _size.width <= 420 ? SchudleCardMob() : SchudleCard(),
                      desktop: SchudleCard()),
                ],
              ),
            ],
          ),
        ));
  }
}

class SchudleCardMob extends StatelessWidget {
  const SchudleCardMob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Schedule",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.business_sharp,
                  color: Colors.orange,
                  size: 50,
                ),
                title: Text(
                  '56',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('الطلبات'),
              ),
            ]),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.green,
                  size: 50,
                ),
                title: Text(
                  '2400',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('الارباح'),
              ),
            ]),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.show_chart,
                  color: Color.fromARGB(255, 255, 1, 170),
                  size: 50,
                ),
                title: Text(
                  '877',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('زيارات الموقع'),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SchudleCard extends StatelessWidget {
  const SchudleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "My Schedule",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.business_sharp,
                  color: Colors.orange,
                  size: 50,
                ),
                title: Text(
                  '56',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('الطلبات'),
              ),
            ]),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.green,
                  size: 50,
                ),
                title: Text(
                  '2400',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('الارباح'),
              ),
            ]),
          ),
          Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.show_chart,
                  color: Color.fromARGB(255, 255, 1, 170),
                  size: 50,
                ),
                title: Text(
                  '877',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('زيارات الموقع'),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScheduleCardMob extends StatelessWidget {
  const ScheduleCardMob({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
