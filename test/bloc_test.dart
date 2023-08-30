import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sample_bloc/features/home/data/models/home_model.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
import 'package:sample_bloc/features/home/domain/use_cases/home_use_case.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_bloc.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_event.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_state.dart';

import 'bloc_test.mocks.dart';

class UserMock extends MockBloc<UserEvent, UserState> implements UserBloc {}

class MyUserCaseMock extends Mock implements HomeUseCase {}

@GenerateMocks([MyUserCaseMock])
void main() {
  late MockMyUserCaseMock userMock;
  late UserMock userMockBloc;
  setUp(() {
    // setUpServiceLocater();
    // userMock = UserMock();
    userMockBloc = UserMock();
    userMock = MockMyUserCaseMock();
  });
  // setUp(() {

  group("bloc test", () {
    test("get user bloc test", () async {
      when(userMock.getSampleData())
          .thenAnswer((data) async => const Right(<UserEntity>[]));
      verifyNever(userMock.getSampleData()).called(0);

      userMock.getSampleData();

      verify(userMock.getSampleData()).called(1);
      final result = userMock.getSampleData();

      expectLater(result, completion(const Right(<Users>[])));


    });

    group("bloc group", () { 

      test("bloccc test", () {
        whenListen(
        userMockBloc,
        initialState:const UserState.loading(),
        Stream.value("")
        );
      });
    });


    blocTest("user bloc test", 
      build:()=>UserBloc(),
      act: (bloc)=> bloc.add(const UserEvent.onPressed()),
      expect: () =>[const UserState.loading()],
    );

  });
}
