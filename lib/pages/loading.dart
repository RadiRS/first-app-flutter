import 'package:flutter/material.dart';
import 'package:first_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Jakarta', flag: 'indonesia.png', url: 'Asia/Jakarta');

    await instance.getTime();

    print(instance.time);

    setState(() {
      time = instance.time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(50),
      child: Text(time),
    ));
  }
}
