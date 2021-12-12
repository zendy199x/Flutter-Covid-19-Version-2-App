import 'package:covid_19_ver_2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PreventitonCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  const PreventitonCard({
    Key? key,
    required this.svgSrc,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
