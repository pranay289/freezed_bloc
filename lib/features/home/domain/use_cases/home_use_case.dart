import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_bloc/core/failure.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
import 'package:sample_bloc/features/home/domain/repository/home_repository.dart';

@injectable
class HomeUseCase {
  Future<Either<Failure,  List<UserEntity>>> getSampleData() async {
    final response = await getIt<HomeRepository>().getSampleData();
    return response;
  }
}
