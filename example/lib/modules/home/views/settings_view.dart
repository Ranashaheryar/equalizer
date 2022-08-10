import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../../utils/sizeconfig.dart';
import '../controllers/home_controller.dart';

class SettingsView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: AppColors.AppBarBG,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 40,
              height: SizeConfig.blockSizeVertical * 22,
              margin: EdgeInsets.only(top: 20.0),
              child: Image.asset(AppImages.app_ic),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 2.5),
          Text(
            "App",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white38,
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 2.5),
          GestureDetector(
            child: Container(
              // height: 40.0,
              // width: 140.0,
              child: Text(
                "Rate Us",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 2.5),
          GestureDetector(
            child: Container(
              // height: 40.0,
              // width: 140.0,
              child: Text(
                "More Apps",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 2.5),
          GestureDetector(
            child: Container(
              // height: 40.0,
              // width: 140.0,
              child: Text(
                "Recommend",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 2.5),
          GestureDetector(
            child: Container(
              // height: 40.0,
              // width: 140.0,
              child: Text(
                "Privacy Policy",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
