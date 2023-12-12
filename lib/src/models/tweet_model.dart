import 'package:json_annotation/json_annotation.dart';

part 'tweet_model.g.dart';

@JsonSerializable()
class TweetModel {
  final String tweetID;
  final String text;
  final DateTime date;
  final List<String> likes;

  TweetModel(this.tweetID, this.text, this.date, this.likes);

  factory TweetModel.fromJason(Map<String, dynamic> json) =>
      _$TweetModelFromJson(json);
  Map<String, dynamic> toJson() => _$TweetModelToJson(this);
}
