import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Screens/Sleep/Play%20Option.dart';
import 'package:meditation_app/constants.dart';


class SleepMusic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sleepBackgroundColor,
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset("asset/image/Group 6792.svg"),
                ),
SizedBox(
  width: MediaQuery.of(context).size.width * 0.14
),
                 Text("Sleep Music",style: HeadingText.copyWith(color: ButtonTextColor,fontWeight: FontWeight.w700,fontSize: 24),)
              ],
            ),
            transform: Matrix4.translationValues(0, 45, 0),
          ),
SizedBox(
  height: 64,
),
          SingleChildScrollView(
            child: Container(


              transform: Matrix4.translationValues(10, 10,0),
              height: MediaQuery.of(context).size.height*0.69,
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
          ),


        ],
      ),
    );
  }
}
