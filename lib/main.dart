import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task6_1/binding/initial_bindings.dart';
import 'package:task6_1/core/service/my_srevice.dart';
import 'package:task6_1/view/homescreen/homescree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task6_1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialBinding: InitialBindings(),
      home: Homescree(),
    );
  }
}
