import 'package:audio_service/audio_service.dart';
import 'package:equalizer/equalizer.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  RxDouble volumeSlider=50.0.obs;
  late AudioHandler audioHandler;
  @override
  void onInit() async{
    super.onInit();
    
    await Equalizer.setEnabled(true).then((Value) {
    //  Equalizer.init(0);
     print("Enabled");
      
    });   
    // var fetchPresets =await Equalizer.getPresetNames();
    // print("fetchPresets: $fetchPresets");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  //  InitHandler() async {
  // audioHandler = await AudioService.init(
  //   builder: () => SettingsView(),
  //   config: const AudioServiceConfig(
  //     androidNotificationChannelId: 'com.ryanheise.myapp.channel.audio',
  //     androidNotificationChannelName: 'Audio playback',
  //     androidNotificationOngoing: true,
  //   ),
  // );



}
