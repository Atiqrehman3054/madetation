import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class Meditate extends StatefulWidget {

  @override
  _MeditateState createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  final List<String> _listViewData = [
    "asset/image/Group 6814.svg",
    "asset/image/Group 6815.svg",
    "asset/image/Group 6816.svg",
    "asset/image/Group 6817.svg",
    "asset/image/Group 6818.svg",


  ];
  final List<String> _data = [

    "All",
    "My",
    "Anxious",
    "Sleep",
    "Kids",


  ];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }





  get kButtonColor2 => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Meditate",
              style: HeadingText2.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "we can learn how to recognize when our minds \n  are doing their normal everyday acrobatics.",
              style: HeadingText2.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
          ],
        ),
            SizedBox(height: 34,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 430,
                    child: ListView.builder(

                      scrollDirection:Axis.horizontal,
                      itemCount: _listViewData.length,

                      itemBuilder:(BuildContext context,int index)=>
                          InkWell(
                            onTap: () => _onSelected(index),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                width: 65.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: _selectedIndex != null && _selectedIndex == index  ? Color(0xFF8E97FD) : Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(_listViewData[index]),
                                    Text(_data[index]),
                                  ],
                                ),
                                // Image.asset(_listViewData[index]),


                              )
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 95,
            //   child:  ListView.builder(
            //     physics: ClampingScrollPhysics(),
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     itemCount: 7,
            //     itemBuilder: (BuildContext context, int index) {
            //       return   Padding(
            //         padding: const EdgeInsets.only(left: 10),
            //         child: Container(
            //           height: 95,
            //           width: 65,
            //           child: Column(
            //             children: [
            //               Container(
            //                 height: 65,
            //                 width: 65,
            //                 decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(20),
            //                   color: Cardbackground,
            //
            //                 ),
            //                 child: Icon(Icons.emoji_emotions_rounded,color: Colors.white54,),
            //
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text('Anxious',style: TextStyle(color: Cardbackground),),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
SizedBox(height: 29,),
            Container(
              height: 95,
              width: 374,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('asset/image/image (31).png'),
                  fit: BoxFit.fill,
                ),
                color: containerbackground,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Daily Clam",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                       ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "ARP 30 . PAUSE PRACTICE",
                          style:
                          TextStyle(fontSize: 12, ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.play_arrow_sharp,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),


            SingleChildScrollView(
              child: Container(


                transform: Matrix4.translationValues(10, 10,0),
                height: 350,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) =>
                      Padding(
                        padding: const EdgeInsets.only(right: 10 ,left:10,),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: 146,
                            // width: 176,
                            color:kButtonColor2,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  // width: 164,
                                  decoration: BoxDecoration(
                                    image:DecorationImage(
                                      // fit: BoxFit.cover,
                                      image:AssetImage("asset/image/image (35).png",),
                                    ),),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 20),
                                  child: Text("7 Days of Calm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  staggeredTileBuilder: (int index) =>
                      StaggeredTile.count(2, index.isEven ? 2 :1.8),
                  mainAxisSpacing:12 ,
                  crossAxisSpacing: 2,
                  shrinkWrap: true,
                ),
              ),
            )
    ]
    ),
      ),
    ),
    );
  }
}
