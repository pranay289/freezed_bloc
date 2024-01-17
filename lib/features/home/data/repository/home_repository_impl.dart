import 'package:injectable/injectable.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/features/home/data/datasource/home_data_source.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';


@Injectable(as:HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Either<Failure,  List<UserEntity>>> getSampleData() {
   return getIt<HomeDataSource>().getSampleData();
  }
  
}
