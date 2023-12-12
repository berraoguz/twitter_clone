import 'package:json_annotation/json_annotation.dart';

part 'pagination_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GenericPagedResponse<T> {
  final int perPage;
  final int currentPage;
  final List<T> data;

  GenericPagedResponse(this.perPage, this.currentPage, this.data);

  factory GenericPagedResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$GenericPagedResponseFromJson(json, fromJsonT);
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$GenericPagedResponseToJson(this, toJsonT);
}
