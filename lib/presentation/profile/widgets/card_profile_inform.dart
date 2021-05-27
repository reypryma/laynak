import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardProfileInformationWidget extends StatelessWidget {
  const CardProfileInformationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      //color: Colors.blue,
      height: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset.fromDirection(90))
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        //Rata kiri
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            child: Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  //child: Image.asset('assets/images/nak.jpg'),
                  // child: FittedBox(
                  //   child: Image.asset('assets/images/nak.jpg'),
                  //   fit: BoxFit.fill,
                  // ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/nak.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Nak Sun Suk",
                        // bila teks penuh
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Cloud Developer",
                        // bila teks penuh
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Paskan
                      Flexible(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            borderRadius: BorderRadius.circular(7)),
                        height: 60,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InformationValueBox(
                              subtitle: "Articles",
                              value: "10",
                            ),
                            InformationValueBox(
                              subtitle: "Followers",
                              value: "10",
                            ),
                            InformationValueBox(
                              subtitle: "Rating",
                              value: "10",
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              //Bagi rata dua tombol
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Chat",
                          style: TextStyle(fontSize: 16),
                        ),
                        onPressed: () {}),
                  ),
                  //Tambah space antar tombol
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text(
                          "Follow",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InformationValueBox extends StatelessWidget {
  const InformationValueBox(
      {Key key, @required this.subtitle, @required this.value})
      : super(key: key);

  final String subtitle, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
