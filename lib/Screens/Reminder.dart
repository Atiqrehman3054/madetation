import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SelectScreen.dart';
import 'splashScreen.dart';

import '../constants.dart';


class Reminder extends StatefulWidget {



  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {

  final List<String> _listViewData = [
    "SU",
    "MO",
    "TU",
    "WE",
    "TH",
    "FR",
    "SA",
  ];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }




  int currentSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

 backgroundColor: kPagebackgroundcolor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(

                transform: Matrix4.translationValues(0, 50, 0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What time would you ",
                        style: HeadingText2.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "like to meditate?",
                        style: HeadingText2.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Any time you can choose but We recommend \n first thing in th morning.",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Container(

                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF5F5F9),


                          ),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 20,
                                child: Text(""),
                              ),
                              Expanded(
                                child: CupertinoTimerPicker(
                                  mode: CupertinoTimerPickerMode.hms,
                                  onTimerDurationChanged: (data) {},
                                ),
                              ),
                            ],
                          ),

                          height: MediaQuery.of(context).size.height * 0.24,
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ),
                      Text("Which day would you ",
                        style: HeadingText2.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "like to meditate?",
                        style: HeadingText2.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Everyday is best, but we recommend picking \n at least five.",
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 60,
 width: 450,
                          child: ListView.builder(

                      scrollDirection:Axis.horizontal,
                      itemCount: _listViewData.length,

                      itemBuilder:(BuildContext context,int index)=>
                          InkWell(
                            onTap: () => _onSelected(index),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                width: 45.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: _selectedIndex != null && _selectedIndex == index  ? Colors.white : Colors.black,
                                ),
                                child: Center(child: Text(

                                  _listViewData[index],style: TextStyle(
                                  color: _selectedIndex != null && _selectedIndex == index  ? Colors.black : Colors.white,),

                                )
                                ),



                              ),
                            ),
                          ),
                    ),
                        ),
                      ],
                    ),
                  ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Center(
                            child: Container(


      child: GestureDetector(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (_) => select_Screen()));
        },
        child: Text(
          'Save',
        ),
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: kBackgroundColor,
      ),
      height: 47.0,
      width: MediaQuery.of(context).size.width * 0.8,
    ),
                          ),
                        ),

    Center(child: Text('NO THANKS'),),





    ],

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
