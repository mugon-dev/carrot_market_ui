import 'package:carrot_market_ui/screens/components/appbar_prefereed_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
