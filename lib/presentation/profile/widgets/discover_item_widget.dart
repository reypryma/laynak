import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiscoverItemListWidget extends StatelessWidget {
  const DiscoverItemListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: 230,
              //color: Colors.green,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "http://www.world-art.ru/animation/img/10000/9660/10.jpg",
                      ))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.yellow,
              //child: Text("data"),
              child: Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nature",
                    style:
                        TextStyle(fontSize: 15, color: Colors.yellow.shade900),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Text("Let us plant more trees from this year",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
