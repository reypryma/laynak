import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle(
      {Key key, @required this.title, @required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 8,
        ),
        Text(subTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey))
      ],
    );
  }
}
