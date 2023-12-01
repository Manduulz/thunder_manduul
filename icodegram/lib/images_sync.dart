import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllImagesSVG extends StatelessWidget {
  final String image;
  final double wight;
  final double heigth;

  const AllImagesSVG(
      {super.key, required this.wight, required this.heigth, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wight,
      height: heigth,
      child: SvgPicture.asset(image),
    );
  }
}