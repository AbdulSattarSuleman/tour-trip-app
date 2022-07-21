import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_trip_app/presentation/resources/asset_manager.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';
import 'package:tour_trip_app/presentation/resources/style_manager.dart';
import 'package:tour_trip_app/utils/custom_card_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool clickCenterFAB = false;
  int selectedIndex = 0;
  String text = 'Home';

  // call this method on click of each bottom app bar item to update the screen

  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // foregroundColor: ColorManager.appBarBg,
        backgroundColor: ColorManager.appBarBg,
        onPressed: () {
          setState(() {
            clickCenterFAB = !clickCenterFAB;
          });
        },
        // tooltip: "Add",
        child: Container(
          // margin: EdgeInsets.all(15),
          child: Icon(
            Icons.add,
            size: 50,
            color: ColorManager.whiteColor,
          ),
        ),
        elevation: 0,
        // focusColor: ColorManager.appBarBg,
      ),
      bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
          color: ColorManager.whiteColor,
          elevation: 15.0,
          child: Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      updateTabSelection(0, "Home");
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.home,
                      color: selectedIndex == 0
                          ? ColorManager.appBarBg
                          : Colors.grey.shade300,
                    )),
                IconButton(
                    onPressed: () {
                      updateTabSelection(1, "Location");
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.location_on_outlined,
                      color: selectedIndex == 1
                          ? ColorManager.appBarBg
                          : Colors.grey.shade300,
                    )),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {
                      updateTabSelection(2, "Wallet");
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.wallet_outlined,
                      color: selectedIndex == 2
                          ? ColorManager.appBarBg
                          : Colors.grey.shade300,
                    )),
                IconButton(
                    onPressed: () {
                      updateTabSelection(3, "Catalog");
                    },
                    iconSize: 40,
                    icon: Icon(
                      Icons.grid_view_rounded,
                      color: selectedIndex == 3
                          ? ColorManager.appBarBg
                          : Colors.grey.shade300,
                    )),
              ],
            ),
          )),
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
                      ScreenUtil().setSp(32),
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

          Expanded(
              child: ListView(
            children: [
              CustomCard1(
                txt1: "AP35 AA 7111",
                txt2: 'Trip ID - 2323',
                date: "06-JUNE-2022",
                time: "06:30 PM",
                btntxt: "Un-Loading in Process",
                bgColor: ColorManager.card1Bg,
                document: "Current Location",
                documentStatus: "Tokyo, AP",
                paymentPending: "Paid",
              ),
              CustomCard1(
                txt1: "AP35 AA 7111",
                txt2: 'Trip ID - 2323',
                date: "06-JUNE-2022",
                time: "06:30 PM",
                btntxt: "Un-Loading in Process",
                bgColor: ColorManager.appBarBg,
                document: "Documents",
                documentStatus: "Sent",
                paymentPending: "Pending",
              ),
              CustomCard1(
                txt1: "AP36 7111",
                txt2: 'Trip ID - 2326',
                date: "07-JUNE-2022",
                time: "07:30 PM",
                btntxt: "Loading in Process",
                bgColor: ColorManager.appBarBg,
                document: "Documents",
                documentStatus: "Sent",
                paymentPending: "Paid",
              ),
            ],
          ))
          // Container(
          //   margin: EdgeInsets.fromLTRB(20, 000, 20, 0),
          //   decoration: BoxDecoration(
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey,
          //         blurRadius: 0.5,
          //         spreadRadius: 0.0,
          //         offset: Offset(2.0, 2.0), // shadow direction: bottom right
          //       )
          //     ],
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(8),
          //     ),
          //   ),
          //   child: Column(
          //     children: [
          //       Container(
          //         color: ColorManager.card1Bg,
          //         child: Expanded(
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Text('AP35 AA 77111'),
          //               Text('Trip ID- 2325'),
          //               Text("06-JUNE-2022"),
          //               Text("06:30 PM"),
          //             ],
          //           ),
          //         ),
          //       ),
          //       Container(
          //         color: Colors.grey,
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    ));
  }
}
