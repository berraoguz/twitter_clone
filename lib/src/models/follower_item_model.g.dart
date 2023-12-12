// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowerItemModel _$FollowerItemModelFromJson(Map<String, dynamic> json) =>
    FollowerItemModel(
      json['name'] as String,
      json['avatar'] as String,
      json['description'] as String,
      json['memberCount'] as int,
    );

Map<String, dynamic> _$FollowerItemModelToJson(FollowerItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar': instance.avatar,
      'description': instance.description,
      'memberCount': instance.memberCount,
    };
