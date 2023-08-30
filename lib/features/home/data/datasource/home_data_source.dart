import 'package:dartz/dartz.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:sample_bloc/core/request.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/features/home/data/models/home_model.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';

abstract class HomeDataSource {
  Future<Either<Failure, UsersList>> getSampleData();
}

class HomeDataSourceImpl extends HomeDataSource {
  @override
  Future<Either<Failure, UsersList>> getSampleData() async {
    try {
      final request = serviceLocater<Request>();
      final result = await request.get("/posts");
      if (result.statusCode == 200) {
        UsersList usersList = [];
        for (var data in result.data) {
          usersList.add(Users.fromJson(data).mapToDomain());
        }
        return Right(usersList);
      }
      return const Left(ConnectionFailure("Some thing went wrong!"));
    } catch (e) {
      return Left(ParsingFailure(e.toString()));
    }
  }
}
