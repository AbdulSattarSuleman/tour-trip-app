import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';

import 'app/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: ColorManager.appBarBg,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(TourApp());
}
