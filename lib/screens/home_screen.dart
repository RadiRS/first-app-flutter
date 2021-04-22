import 'package:flutter/material.dart';

import '../data.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            final video = videos[index];

            return VideoCard(video: video);
          }, childCount: videos.length))
        ],
      ),
    );
  }
}
