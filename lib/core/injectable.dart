
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/core/request.dart';
import 'package:sample_bloc/features/home/data/datasource/home_data_source.dart';
import 'package:sample_bloc/features/home/data/repository/home_repository_impl.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';
import 'package:sample_bloc/features/home/domain/use_cases/home_use_case.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_bloc.dart';

import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureInjection(String? environement)=> $initGetIt(getIt,environment: environement);