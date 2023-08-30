import 'package:dartz/dartz.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';

class HomeUseCase {
  Future<Either<Failure,  List<UserEntity>>> getSampleData() async {
    final response = await serviceLocater<HomeRepository>().getSampleData();
    return response;
  }
}
