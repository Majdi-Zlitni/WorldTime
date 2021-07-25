import 'package:flutter/material.dart';
import 'package:wolrdtimeapp/services/world_time.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
void setupWorldTime() async {
  WorldTime instance= WorldTime(location: 'Tunis', flag:'Tunisia.png', url:'Africa/Tunis');
  await instance.getTime();
  print(instance.time);
}

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}