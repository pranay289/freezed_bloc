import 'package:flutter/services.dart';
import 'package:sample_bloc/app/app_config.dart';
import 'package:sample_bloc/app/view/app.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/utils/enums.dart';

 const platform = MethodChannel("MY_CHANNEL");
void main() async {
  configureInjection(Flavors.dev.name);
  await AppConfig(flavor: Flavors.dev).initializeApp(const MyApp());
}

 class PlatformTest{
  static Future<bool> showToast(String message) async {
    try {
      final result = await platform.invokeMethod("showToast", message);
      return result;
    }  catch (_) {
      return false;
    }
  }
 }