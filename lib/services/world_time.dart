import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location; // location name for the ui
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; // true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      // create a promise used a Future key
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);

      // print(data);

      // get propertiest from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // print('$datetime $offset');

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);

      // set time properti
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jms().format(now);
    } catch (e) {
      print('error $e');
      time = 'coult not get time data';
    }
  }
}
