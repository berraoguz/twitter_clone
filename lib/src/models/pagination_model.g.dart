// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericPagedResponse<T> _$GenericPagedResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    GenericPagedResponse<T>(
      json['perPage'] as int,
      json['currentPage'] as int,
      (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$GenericPagedResponseToJson<T>(
  GenericPagedResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'perPage': instance.perPage,
      'currentPage': instance.currentPage,
      'data': instance.data.map(toJsonT).toList(),
    };
