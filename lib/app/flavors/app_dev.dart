import 'package:sample_bloc/app/app_config.dart';
import 'package:sample_bloc/app/view/app.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/utils/enums.dart';


void main() async {
  configureInjection(Flavors.dev.name);
  await AppConfig(flavor: Flavors.dev).initializeApp(const MyApp());
}