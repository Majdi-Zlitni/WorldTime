import 'package:http/http.dart'; // to make the request from the json API
import 'dart:convert'; // to use json decode

class WorldTime{
  WorldTime({required this.location,required this.flag, required this.url});
  String location; // el blassa
  String time='loading';
  String flag; // url for the flag icon
  String url; // location url for api

  Future<void> getTime() async {
    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data);

    // get properties from json
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print(datetime);
    //print(offset);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    time=now.toString();
  }
}

WorldTime instance= WorldTime(location: 'Tunis', flag: 'Tunisia.png', url: 'Africa/Tunis');
