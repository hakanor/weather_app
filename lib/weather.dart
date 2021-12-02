import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Weather{
   double? temp;
   double? feelsLike;
   double? low;
   double? high;
   double? pressure;
   double? humidity;
   String? description;

  Object? get url => null;
    Future getWeather(String city) async {

    var url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$DotEnv().env['apiKey'];&units=metric";
    http.Response response = await http.get(Uri.parse(url));
    var results =jsonDecode(response.body);


    temp=results['main']['temp'].toDouble();
    feelsLike=results['main']['feels_like'].toDouble();
    low=results['main']['temp_min'].toDouble();
    high=results['main']['temp_max'].toDouble();
    pressure=results['main']['pressure'].toDouble();
    humidity=results['main']['humidity'].toDouble();
    //description=results['weather']['0']['description'];
    print("aaaaaa");
      print(low);
    return Weather;
  }

  Weather({this.temp, this.feelsLike , this.description, this.high, this.low, this.pressure,this.humidity});

  factory Weather.fromJson(Map <String,dynamic> json){
    return Weather(
      temp:json['main']['temp'].toDouble(),
      feelsLike:json['main']['feels_like'].toDouble(),
      low:json['main']['temp_min'].toDouble(),
      high:json['main']['temp_max'].toDouble(),
      pressure:json['main']['pressure'].toDouble(),
      humidity:json['main']['humidity'].toDouble(),
      description:json['weather']['0']['description'],

    );
  }

}
