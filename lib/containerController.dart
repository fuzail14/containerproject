import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class containerController extends GetxController {
  var flag = true.obs;
  setFlag() => flag.value = !flag.value;
}
