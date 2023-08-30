import 'package:dartz/dartz.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, UsersList>> getSampleData();
}
