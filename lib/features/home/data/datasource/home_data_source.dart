import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/core/request.dart';
import 'package:sample_bloc/features/home/data/models/home_model.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';


abstract class HomeDataSource {
  Future<Either<Failure,  List<UserEntity>>> getSampleData();
}

@Injectable(as:HomeDataSource)
class HomeDataSourceImpl extends HomeDataSource {
  @override
  Future<Either<Failure, List<UserEntity>>> getSampleData() async {
    try {
      final request = getIt<Request>();
      final result = await request.get("/posts");
      if (result.statusCode == 200) {
         List<UserEntity> usersList = [];
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
