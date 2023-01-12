import 'package:booking_app/util/app_layOut.dart';
import 'package:booking_app/util/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
          color: Styles.primaryColor),
      child: Column(children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/one.png"))),
        ),
        const Gap(15),
        Text(
          "Open Space",
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        Text(
          "London",
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        Text(
          "\$40/night",
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
