import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard extends StatelessWidget {
  final txt1, txt2, date, time, btntxt;
  CustomCard(
      {Key? key, this.txt1, this.txt2, this.date, this.time, this.btntxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: screenSize.width * 0.8,
      height: 100,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("AP#% AA 77111"),
                Text("Trip ID - 2325"),
                Text("06-JUNE_2022" + " " + "06:30 PM")
              ],
            ),
          )
        ],
      ),
    );
  }
}
