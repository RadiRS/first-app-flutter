import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    getDate();
  }

  void getDate() async {
    //  simulate network request
    String username = await Future.delayed(Duration(seconds: 3), () {
      // similiar with setTimeOut
      return "radi";
    });

    //  simulate network request to get data
    String bio = await Future.delayed(Duration(seconds: 2), () {
      // similiar with setTimeOut
      return "software engineer";
    });

    print('$username is $bio');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
