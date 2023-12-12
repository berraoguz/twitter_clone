import 'package:json_annotation/json_annotation.dart';

part 'follower_item_model.g.dart';

@JsonSerializable()
class FollowerItemModel {
  final String name, avatar, description;
  final int memberCount;

  FollowerItemModel(this.name, this.avatar, this.description, this.memberCount);

  factory FollowerItemModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$FollowerItemModelToJson(this);
}
