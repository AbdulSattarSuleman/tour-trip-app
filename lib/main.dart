import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_trip_app/presentation/resources/color_manager.dart';

import 'app/app.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: ColorManager.appBarBg,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark));
  await ScreenUtil.ensureScreenSize();
  runApp(TourApp());
}
