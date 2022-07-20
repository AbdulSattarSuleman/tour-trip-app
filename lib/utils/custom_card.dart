import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';

class CustomCard extends StatelessWidget {
  final txt1, txt2, date, time, btntxt;
  CustomCard(
      {Key? key, this.txt1, this.txt2, this.date, this.time, this.btntxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 10, right: 10),
        width: screenSize.width * 0.9,
        height: 100,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  height: 50,
                  color: ColorManager.card1Bg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text(txt1)),
                      Expanded(child: Text(txt2)),
                      Expanded(child: Text("${date}" + " " + "${time}"))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
