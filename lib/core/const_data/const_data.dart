import 'dart:async';

class ConastData {
  static bool islogin = false;
  static String token = '1037|nCYLOmOF6cnQl7KS2AFs2eXtVEnTURqXpqeIntUice49c0c1';
  static const String map_key = "";
  static Future<void> updateToken() async {}
  static Future<void> StarTokenupdaer() async {
    Timer.periodic(Duration(seconds: 20), (timer) {
      updateToken();
    });
  }
}
