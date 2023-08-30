import 'package:sample_bloc/app/app_config.dart';
import 'package:sample_bloc/app/view/app.dart';
import 'package:sample_bloc/utils/enums.dart';

void main() async {
  await AppConfig(flavor: Flavors.prod).initializeApp(const MyApp());
}
