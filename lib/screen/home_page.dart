import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_card_widget.dart';



class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          // buraya fab tıklama eventleri gelecek
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
              Container(
                margin: EdgeInsets.only(top:20,),
                child: Image(image: AssetImage('assets/images/logo.png'),width: 70,height: 70,),
              ),
              Expanded(
                child: ListView(
                  children: [
                    WeatherCardWidget(),
                    WeatherCardWidget(),
                    WeatherCardWidget(),
                  ],
                ),
              )
            ],

            ),
          ),
      ),
    );
  }
}

