import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_bloc/features/home/domain/entities/users_entity.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

@JsonSerializable()
@freezed
class User with _$User{
 
  factory User({
   required  List<Users> users})= _User;

  const User._();

  static User fromJson(Map<String, Object?> json)=> _$UserFromJson(json);

  List<UserEntity> mapToDmain() => users.map((e) => e.mapToDomain()).toList();
  

}

@JsonSerializable()
@freezed
class Users with _$Users {

  const factory Users(
      {@Default(0) int userId,
      @Default('') String body,
      @Default('') String title}) = _Users;

  const Users._();

  static Users fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  UserEntity mapToDomain() => UserEntity(id: userId, title: title, body: body);
  
}
