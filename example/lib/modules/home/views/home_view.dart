import 'package:audio_service/audio_service.dart';
import 'package:equalizer/equalizer.dart';
import 'package:equalizer_example/modules/home/views/equalizer_view.dart';
import 'package:equalizer_example/modules/home/views/settings_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/sizeconfig.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Volume Booster"),
        backgroundColor: AppColors.AppBarBG,
      ),
      body: Column(
        children: [
          verticalSpace(SizeConfig.blockSizeVertical * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () async{
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                    //   return MyScreen();
                    // },),);
// await Equalizer.open(0);
//  var res=await Equalizer.getBandLevelRange();
//  print("Result: $res");
// AudioHandler.customAction();
Get.to(EqualizerView());

                    // Get.toNamed(Routes.SettingsView);
                  },
                  child: Container(
                    //settings button
                    width: SizeConfig.blockSizeHorizontal * 15,
                    height: SizeConfig.blockSizeVertical * 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: SizeConfig.blockSizeHorizontal * 50,
            height: SizeConfig.blockSizeVertical * 25,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.purple,
              ]),
            ),
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 15),
          Obx(() => SfSlider(
                value: controller.volumeSlider.value,
                onChanged: (value) {
                  print(value);
                  controller.volumeSlider.value = value;
                },
                min: 0.0,
                max: 100.0,
                activeColor: Colors.red,
                inactiveColor: Colors.red.shade300,
              )),

          /* Slider (value: 50,
            activeColor: Colors.purple,
            inactiveColor: Colors.orange,
            thumbColor: Colors.black,
            max: 100.0,
            min: 0.0,              
             onChanged: null),*/

          verticalSpace(SizeConfig.blockSizeVertical * 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  // width: SizeConfig.blockSizeHorizontal * 50,
                  // height: SizeConfig.blockSizeVertical * 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.volume_off,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  // width: 50,
                  // height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.volume_down_sharp,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  // width: 50,
                  // height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.volume_up_sharp,
                    color: Colors.purple,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(SizeConfig.blockSizeVertical * 5),
          Expanded(
              child: Text(
            "WARNING: play audio at high volume may damage speakers/ hearing. ALL USE IS AT YOUR OWN RISK. particularly beware of boost above 40%, especially with music.",
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}
