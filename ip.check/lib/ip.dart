import "dart:convert";
import "package:http/http.dart" as http;
 const stringUrl = "https://ipapi.co/json/";


Future<Ip> getIp() async {
 final url = Uri.parse(stringUrl);
 final res = await http.get(url);
 final Map<String, dynamic> data = json.decode(res.body);
 return 
 Ip(
  ip:data['ip'],
  region:data['region'],
  postal:data['postal'],
  city:  data["city"]);


}

class Ip {
  String ip, region , postal, city;

  Ip(
    {required this.ip,
     required this.region,
      required this.postal,
       required this.city});


  @override 
  String toString() {
    return ip;
  }
}
