import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    getTime();
  }

  void getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Jakarta'));

    Map data = jsonDecode(response.body);

    print(data);

    // get propertiest from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // print('$datetime $offset');

    // create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading screen'));
  }
}
