import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_card_widget.dart';
import '../weather.dart';


class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int selectedIndex=0;
  var WeatherCardWidgetList =[];
  String cityName="";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          // buraya fab tıklama eventleri gelecek

          Weather w1 = new Weather();
          w1.getWeather("Ankara");
          //print(w1.temp);

          setState(() {
            WeatherCardWidgetList.add(WeatherCardWidget(title: "Ankara",));
          });

        },
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
          color: Color(0xFFF6F6F6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // LOGO + TEXT
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:20,),
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image(image: AssetImage('assets/images/logo.png'),width: 70,height: 70,)),
                  ),
                  Text("Weather_App"),
                ],
              ),

              // LIST VIEW
              Expanded(
                child: ListView.builder(
                  itemCount: WeatherCardWidgetList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return WeatherCardWidgetList[index];
                  },
                ),
              ),

            ],

            ),
          ),
      ),
    );
  }
}

