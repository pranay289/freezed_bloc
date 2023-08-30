import 'package:flutter/material.dart';
import 'package:sample_bloc/app/flavors/app_dev.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/utils/enums.dart';

class AppConfig {
  late Enum flavor;

  /// To create private constructor
  AppConfig._();

  /// To get single tone instance of the current class
  ///
  static final instance = AppConfig._();

  /// Whenever this below constructor gets called
  /// it will creates the single instance of current
  /// class.
  factory AppConfig({required Enum flavor}) {
    instance.flavor = flavor;
    return instance;
  }

  /// To run app
  void startApp(Widget app) => runApp(app);

  /// To add configration on initial startup
  Future<void> initializeApp(Widget app) async {
    WidgetsFlutterBinding.ensureInitialized();
    // await Future.delayed(const Duration(seconds: 5));
    // To setup service locater service
    await setUpServiceLocater();
    return startApp(app);
  }

  /// To check if the app is running on production
  static bool isProd() => instance.flavor == Flavors.prod;

  /// To check if the app is running on devlopment
  static bool isDev() => instance.flavor == Flavors.dev;

  /// To get flavor details
  static Enum flavorDetails() => instance.flavor;
}
