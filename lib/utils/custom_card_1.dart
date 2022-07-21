import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';
import 'package:tour_trip_app/presentation/resources/style_manager.dart';

class CustomCard1 extends StatelessWidget {
  final txt1,
      txt2,
      date,
      time,
      btntxt,
      document,
      documentStatus,
      paymentPending;
  Color? bgColor;
  CustomCard1({
    Key? key,
    this.bgColor,
    this.txt1,
    this.txt2,
    this.date,
    this.time,
    this.btntxt,
    this.document,
    this.documentStatus,
    this.paymentPending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(13, 10, 13, 5),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              width: screenSize.width * 1,
              // height: screenSize.width * 0.12,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(txt1,
                            style: StyleManager()
                                .h1(14.sp, Colors.white, FontWeight.bold))),
                    Expanded(
                        child: Text(txt2,
                            style: StyleManager()
                                .h1(13.sp, Colors.white, FontWeight.w400))),
                    Expanded(
                        child: Text("${date}" + " " + "${time}",
                            style: StyleManager().h1(ScreenUtil().setSp(13),
                                Colors.white, FontWeight.w400)))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Istanbul, Turkey ",
                    style: StyleManager()
                        .h1(ScreenUtil().setSp(13), bgColor!, FontWeight.bold),
                  ),
                  Text(
                    "1500 KM",
                    style: StyleManager().h1(
                        ScreenUtil().setSp(13), Colors.black, FontWeight.w600),
                  ),
                  Text("Tokyo, Japan",
                      style: StyleManager().h1(ScreenUtil().setSp(13),
                          Colors.black, FontWeight.bold)),
                ],
              ),
            ),
            // 1st line
            Center(
              child: SizedBox(
                width: screenSize.width * 0.7,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: bgColor,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        // indent: 30,
                        // endIndent: 30,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Istanbul, Turkey ",
                      style: StyleManager().h1(ScreenUtil().setSp(13),
                          Colors.black, FontWeight.bold)),
                  Text("1500 KM",
                      style: StyleManager().h1(ScreenUtil().setSp(13),
                          Colors.black, FontWeight.bold)),
                  Text(
                    "Tokyo, Japan",
                    style: StyleManager()
                        .h1(ScreenUtil().setSp(13), bgColor!, FontWeight.bold),
                  ),
                ],
              ),
            ),
            // 2nd line
            Center(
              child: Container(
                width: screenSize.width * 0.7,
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.grey,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1.0,
                        // indent: 30,
                        // endIndent: 30,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: bgColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Load Details:",
                          style: TextStyle(fontSize: ScreenUtil().setSp(13))),
                      Text(
                        "Golden Rice, 25T, 1500",
                        style: TextStyle(fontSize: ScreenUtil().setSp(13)),
                      ),
                    ],
                  ),
                ),
                Container(
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${btntxt}",
                          style: StyleManager().h1(ScreenUtil().setSp(12),
                              ColorManager.whiteColor, FontWeight.bold))),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(TextSpan(
                      text: "${document}:",
                      style:
                          StyleManager().h1(13, Colors.black, FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                            text: "${documentStatus}",
                            style: StyleManager()
                                .h1(15, bgColor!, FontWeight.normal))
                      ])),
                  // payment pending
                  Text.rich(TextSpan(
                      text: "Payment: ",
                      style:
                          StyleManager().h1(13, Colors.black, FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                            text: "${paymentPending} ",
                            style: StyleManager()
                                .h1(15, bgColor!, FontWeight.normal))
                      ])),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
