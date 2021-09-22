import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Screens/Sleep/SleepMusic.dart';
import 'package:meditation_app/Screens/Sleep/WellcomeSleep.dart';
import '../../constants.dart';
import 'Play Option.dart';




class Sleep extends StatefulWidget {

  @override
  _SleepState createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  get kButtonColor2 => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: sleepBackgroundColor,
      body: Stack(

        children: [
          Image.asset("asset/image/off.png"),
          Image.asset("asset/image/Group 6813.png"),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sleep Stories",
                        style: HeadingText2.copyWith(

                            color: ButtonTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 28),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Soothing bedtime stories to help you fall \n into a deep and natural sleep",textAlign: TextAlign.center,
                        style: HeadingText2.copyWith(
                           color: ButtonTextColor,
                            fontWeight: FontWeight.w300,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: 34,),
                  Container(
                    height: 95,
                    child:  ListView.builder(
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return   Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 95,
                            width: 65,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (_) =>Come()));
                          },
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Cardbackground,

                                    ),
                                    child: Icon(Icons.emoji_emotions_rounded,color: Colors.white54,),

                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Anxious',style: TextStyle(color: Cardbackground),),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 29,),
                  Container(
                    height: 233,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: new DecorationImage(
                        image: ExactAssetImage('asset/image/view.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "The Ocean Moon",
                                style: HeadingText2.copyWith(

                                    color: textColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Non-stop 8- hour mixes of our \n most popular sleep audio",textAlign: TextAlign.center,
                                style: HeadingText2.copyWith(
                                    color: ButtonTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (_) =>SleepMusic()));
                                },


                                child: Container(

                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: textColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:
                                  Center(child: Text("START")),
                                ),
                              )
                            ],
                          ),
                          transform: Matrix4.translationValues(60, 60, 0),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  SingleChildScrollView(
                    child: Container(


                      transform: Matrix4.translationValues(10, 10,0),
                      height: 200,
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) =>
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) =>PlayOption()));

                              },
                              child:  Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 174,
                                width: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 122,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage('asset/image/Mask Group (3).png'),
                                          fit: BoxFit.fill,
                                        ),

                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Night Island",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700, fontSize: 18,color: ButtonTextColor),
                                    ),


                                    Text(
                                      "45 MIN . SLEEP MUSIC",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.white54
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.count(2, index.isEven ? 2 :2),
                        mainAxisSpacing:12 ,
                        crossAxisSpacing: 2,
                        shrinkWrap: true,
                      ),
                    ),
                  )
                ]
            ),
          ),
        ],
      ),
    ),
    );
  }
}
