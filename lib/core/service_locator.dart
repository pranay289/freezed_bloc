import 'package:get_it/get_it.dart';
import 'package:sample_bloc/core/request.dart';
import 'package:sample_bloc/features/home/data/datasource/home_data_source.dart';
import 'package:sample_bloc/features/home/data/repository/home_repository_impl.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';
import 'package:sample_bloc/features/home/domain/use_cases/home_use_case.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_bloc.dart';

final serviceLocater = GetIt.instance;

Future<void> setUpServiceLocater() async {
  // Data sources
  serviceLocater.registerFactory<HomeDataSource>(() => HomeDataSourceImpl());
  // Repository implementation
  serviceLocater.registerFactory<HomeRepository>(() => HomeRepositoryImpl());
  // use cases
  serviceLocater.registerFactory<HomeUseCase>(() => HomeUseCase());
  // singleton
  serviceLocater.registerSingleton(Request());

  serviceLocater.registerSingleton(UserBloc());
}
