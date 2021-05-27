import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laynak/presentation/profile/widgets/card_profile_inform.dart';
import 'package:laynak/presentation/profile/widgets/discover_item_widget.dart';
import 'package:laynak/presentation/profile/widgets/featured_banner.dart';

import 'widgets/title_and_subtitle_profile.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //return Activity
    return Scaffold(
      //Safe area dibawah topbar
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            CardProfileInformationWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: natureDiscoveryData()),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: FeaturedArticleBannerWidget()),
          ],
        ),
      ),
    );
  }

  //fungsi tipe data widget
  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(
            title: "Notable Wokrs",
            subTitle: "Based on popularity On Particle",
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            //color: Colors.blue,
            //list perlu di wrap dengan container untuk deklarasi weight
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DiscoverItemListWidget();
                }),
          ),

          //Second Tab
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
