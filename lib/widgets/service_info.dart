// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_assigment/widgets/rating.dart';
import 'package:ui_assigment/widgets/service_content.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key, required this.serviceImg});
  final String serviceImg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerRight,
          children: [
            Container(
              width: 197,
              height: 154,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(serviceImg),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
              right: -230,
              child: Container(
                width: 300,
                // height: 120,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ServiceContent(
                  img:
                      'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                  description: 'Doloribus saepe aut necessit qui non qui.',
                  name: 'Miss Zachary Will',
                  sub_name: 'Beautician',
                  rating: 4.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
