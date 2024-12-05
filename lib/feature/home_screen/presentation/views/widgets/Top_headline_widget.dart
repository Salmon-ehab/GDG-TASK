import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/core/assets/styles.dart';

class TopHeadlineWidget extends StatelessWidget {
  const TopHeadlineWidget(
      {super.key, required this.headLine, required this.headline2});
  final String headLine;
  final String headline2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headLine,
          style: AppStyle.font16black1w600,
        ),
        InkWell(
          onTap: (){},
            child: Text(
          headline2,
          style: AppStyle.font12green1w400,
        ))
      ],
    );
  }
}
