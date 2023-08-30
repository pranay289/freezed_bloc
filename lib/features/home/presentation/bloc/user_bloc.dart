import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/features/home/domain/use_cases/home_use_case.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_event.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  
  UserBloc() : super(const UserState.initial()) {
    on<UserFetchEventData>((event, emit) async {
      emit(const UserState.loading());
      var userResult = await serviceLocater<HomeUseCase>().getSampleData();
      userResult.fold((failure) => emit(UserState.error(failure.message)),
          (data) {
             emit(UserState.loadedState(usersList: data));});
    });

    on<UserOnPressedEventData>((event, emit) async{
      emit(const UserState.loading());
    });
  }
}
