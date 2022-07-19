import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color appBarBg = HexColor.fromHex('#3a4efd');
  static Color sliderBg = HexColor.fromHex('#2138f9');
  static Color filterText = HexColor.fromHex('#4447e8');
  static Color cardBg = HexColor.fromHex('#4c58c6');
  static Color card1Bg = HexColor.fromHex('#ce6134');
  static Color iconColor = HexColor.fromHex('#3a4efd');
  static Color whiteColor = HexColor.fromHex('#ffffff');
}

// Hex Code Convert to COlor FOrmat

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString; // 8 chars with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
