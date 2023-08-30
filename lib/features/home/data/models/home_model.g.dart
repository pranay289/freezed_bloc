// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      users: (json['users'] as List<dynamic>)
          .map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'users': instance.users,
    };

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      userId: json['userId'] as int,
      body: json['body'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'userId': instance.userId,
      'body': instance.body,
      'title': instance.title,
    };
