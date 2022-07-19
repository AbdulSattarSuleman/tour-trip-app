import 'package:flutter/material.dart';
import 'package:tour_trip_app/presentation/resources/asset_manager.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';
import 'package:tour_trip_app/presentation/resources/style_manager.dart';
import 'package:tour_trip_app/presentation/resources/value_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
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
                  Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_none,
                            color: ColorManager.whiteColor,
                            // size: 14,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: ColorManager.whiteColor,
                            // size: AppSize.s12,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.translate_outlined,
                            color: ColorManager.whiteColor,
                            // size: AppSize.s16,
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
