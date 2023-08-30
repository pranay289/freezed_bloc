import 'package:sample_bloc/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/features/home/data/datasource/home_data_source.dart';
import 'package:sample_bloc/features/home/data/models/home_model.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Either<Failure,  List<UserEntity>>> getSampleData() {
   return serviceLocater<HomeDataSource>().getSampleData();
  }
  
}
