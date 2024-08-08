import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/widgets/custom_divider.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDivider(width: context.deviceWidth * 0.4),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text('Or'),
        ),
        CustomDivider(width: context.deviceWidth * 0.4),
      ],
    );
  }
}
