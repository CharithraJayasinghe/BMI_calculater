import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/left_bar.dart';
import 'package:bmi_calculator/widgets/right_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  double _bmiResult = 0;
  String  _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style:TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                     color: Colors.white.withOpacity(.8)
                     ),

                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                     decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)


                      ),
                    ),

                  )
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _widthController,
                    style:TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w300,
                     color: Colors.white.withOpacity(.8)
                     ),

                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8)


                        ),
                      )

                  )
                )

                
                
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){

              } ,
            ),
            Container(
              child: Text("Calculate", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: accentHexColor),),
              
            ),
            SizedBox(height: 50,),
            Container(
              child: Text(_bmiResult.toStringAsFixed(2), style: TextStyle(fontSize: 90, color: accentHexColor)
              )
            ),

            SizedBox(height: 30,),
            Container(
              child: Text("Normal weight", style: TextStyle(fontSize:32, fontWeight: FontWeight.w400, color: accentHexColor),),
            ),

            SizedBox(height: 10,),
            LeftBar(barWidth:40,),
            SizedBox(height: 20,),
            LeftBar(barWidth:70,),
            SizedBox(height: 20,),
            LeftBar(barWidth: 40),

            SizedBox(height: 20,),
            RightBar(barWidth: 70),
            SizedBox(height: 50,),
            RightBar(barWidth: 70),



            
            


          ],
        
          )
        )
    );
  }
}