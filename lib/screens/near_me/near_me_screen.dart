import 'package:carrot_market_ui/models/recommend_store.dart';
import 'package:carrot_market_ui/screens/components/appbar_prefereed_size.dart';
import 'package:carrot_market_ui/screens/near_me/components/bottom_title_icon.dart';
import 'package:carrot_market_ui/screens/near_me/components/round_border_text.dart';
import 'package:carrot_market_ui/screens/near_me/components/search_text_field.dart';
import 'package:carrot_market_ui/screens/near_me/components/store_item.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 근처'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.pencil)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
        ],
        bottom: appBarBottomLine(),
      ),
      // ListView는 수직으로 스크롤 될때 해당 방향으로 나열되는 위젯 각각의 높이를 자식위젯에게 위임하는 특성이 있음
      // 자식에게 고정 높이 값을 지정해야함
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          // 수평 스크롤 되는 영역의 높이값 지정
          SizedBox(
            height: 66,
            child: ListView.builder(
              // 스크롤 방향 수평
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            // wrap 위젯은 자식을 Row나 Column으로 배치할 수 있고 공간이 부족하면 다음줄에 배치
            child: Wrap(
              alignment: WrapAlignment.start,
              // 다음 위젯과의 공간
              spacing: 15.0,
              // 다음 줄부터 시작하는 공간
              runSpacing: 30,
              children: [
                const BottomTitleIcon(
                    title: '구인구직', iconData: FontAwesomeIcons.user),
                const BottomTitleIcon(
                    title: '과외/클래스', iconData: FontAwesomeIcons.edit),
                const BottomTitleIcon(
                    title: '농수산물', iconData: FontAwesomeIcons.appleAlt),
                const BottomTitleIcon(
                    title: '부동산', iconData: FontAwesomeIcons.hotel),
                const BottomTitleIcon(
                    title: '중고차', iconData: FontAwesomeIcons.car),
                const BottomTitleIcon(
                    title: '전시/행사', iconData: FontAwesomeIcons.chessBishop)
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('이웃들의 추천 가게', style: textTheme().headline2),
          ),
          const SizedBox(height: 20),
          Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: StoreItem(recommendStore: recommendStoreList[index]),
                );
              },
            ),
          ),
          // 스크롤을 최하단으로 내렸을 경우 아래의 여유 공간 확보
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
