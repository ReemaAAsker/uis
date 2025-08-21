import 'package:flutter/material.dart';
import 'package:ui_assigment/widgets/rating.dart';

class ServiceContent extends StatelessWidget {
  String img;
  String name;
  String sub_name;
  String description;
  double rating;
  ServiceContent({
    Key? key,
    required this.img,
    required this.name,
    required this.sub_name,
    required this.description,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CircleAvatar(backgroundImage: NetworkImage(img), radius: 25),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                sub_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff827BEB),
                ),
              ),
              Text(description),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Rating(rate: rating),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff827BEB),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
