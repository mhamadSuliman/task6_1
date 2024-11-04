import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySrevice extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MySrevice> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MySrevice().init());
}
