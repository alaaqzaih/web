import 'package:flutter/material.dart';
import 'package:travel_web_dashboard/model.dart/place_model.dart';
import 'package:travel_web_dashboard/project_widget.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
    required this.place,
  }) : super(key: key);
  final PlaceInfo place;
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                // 'images/D.jpg',
                place.image,
                height: 300,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 5,
              child: Column(
                children: <Widget>[
                  Text(
                    place.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      Text(
                        place.location,
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.star, color: Colors.black),
                      Text(
                        "${place.star}",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
