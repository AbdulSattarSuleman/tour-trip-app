import 'package:flutter/material.dart';
import 'package:tour_trip_app/presentation/resources/asset_manager.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';
import 'package:tour_trip_app/presentation/resources/style_manager.dart';
import 'package:tour_trip_app/utils/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.fromLTRB(0.01, 35, 0.01, 5),
            height: screenSize.height * 0.2,
            decoration: BoxDecoration(
              color: ColorManager.appBarBg,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AssetManager.trip,
                    style: StyleManager().heading(
                      48,
                      ColorManager.whiteColor,
                      FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_none,
                              color: ColorManager.whiteColor,
                              size: 32,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: ColorManager.whiteColor,
                              size: 32,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.translate_outlined,
                              color: ColorManager.whiteColor,
                              size: 32,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Slider

          Container(
            height: screenSize.height * 0.08,
            decoration: BoxDecoration(
              color: ColorManager.sliderBg,
            ),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      size: 34,
                      color: ColorManager.whiteColor,
                    )),
                Expanded(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.fromLTRB(10, 14, 10, 13),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            primary: ColorManager.appBarBg),
                        onPressed: () {},
                        child: Text("All - 6", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 5, right: 0),
                    //   child: ElevatedButton(
                    //     style: ButtonStyle(backgroundColor:
                    //         MaterialStateProperty.resolveWith((Color) {
                    //       (Set<MaterialState> states) {
                    //         if (states.contains(MaterialState.pressed))
                    //           return ColorManager.sliderBg;
                    //         return ColorManager.whiteColor;
                    //       };
                    //     })),
                    //     onPressed: () {},
                    //     child: Text("Loading - 3",
                    //         style:
                    //             TextStyle(fontSize: 18, color: Colors.black)),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            primary: ColorManager.whiteColor),
                        onPressed: () {},
                        child: Text("Loading - 3",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            primary: ColorManager.whiteColor),
                        onPressed: () {},
                        child: Text("Unloading - 3",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            primary: ColorManager.whiteColor),
                        onPressed: () {},
                        child: Text("Unloading - 6",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                            primary: ColorManager.whiteColor),
                        onPressed: () {},
                        child: Text("Loading - 6",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),

          // Filter Row
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AssetManager.allTrip,
                  style: StyleManager()
                      .subHeading(22, ColorManager.appBarBg, FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.sort_outlined,
                          color: ColorManager.appBarBg,
                        )),
                    Text(
                      AssetManager.sortTrip,
                      style: StyleManager().subHeading(
                          22, ColorManager.appBarBg, FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ), // Card

          // Card
          CustomCard("AP35 AA 77111","Trip ID-2325",)
CustomCard(String txt1,String txt2, String date, String time, String btntxt),
          Container(
            margin: EdgeInsets.fromLTRB(20, 000, 20, 0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0.5,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Column(
              children: [
                Container(
                  color: ColorManager.card1Bg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('AP35 AA 77111'),
                      Text('Trip ID- 2325'),
                      Text("06-JUNE-2022"),
                      Text("06:30 PM"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    ));
    
  }
  
 
}

 
