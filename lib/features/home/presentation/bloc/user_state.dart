import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitialState;
  const factory UserState.loading() = UserLoadingState;
  const factory UserState.error(String message) = UserErrorState;
  const factory UserState.loadedState({required UsersList usersList}) =
      UserLoadedState;
}
