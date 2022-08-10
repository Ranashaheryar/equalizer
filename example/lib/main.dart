import 'dart:async';

import 'package:equalizer/equalizer.dart';
import 'package:equalizer_example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


void main() => runApp(  GetMaterialApp(
      title: "Volume Booster",
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),);
