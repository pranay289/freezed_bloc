// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/data/datasource/home_data_source.dart' as _i3;
import '../features/home/data/repository/home_repository_impl.dart' as _i5;
import '../features/home/domain/repository/home_repository.dart' as _i4;
import '../features/home/domain/use_cases/home_use_case.dart' as _i6;
import '../features/home/presentation/bloc/user_bloc.dart' as _i8;
import 'request.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.HomeDataSource>(() => _i3.HomeDataSourceImpl());
  gh.factory<_i4.HomeRepository>(() => _i5.HomeRepositoryImpl());
  gh.factory<_i6.HomeUseCase>(() => _i6.HomeUseCase());
  gh.singleton<_i7.Request>(_i7.Request());
  gh.singleton<_i8.UserBloc>(_i8.UserBloc());
  return getIt;
}
