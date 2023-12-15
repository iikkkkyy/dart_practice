import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable(explicitToJson: true)
class Result {
  String originalTitle;
  String releaseDate;
  String title;


  @override
  String toString() {
    return 'Result{originalTitle: $originalTitle, releaseDate: $releaseDate, title: $title}';
  }

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  Result({
    required this.originalTitle,
    required this.releaseDate,
    required this.title,
  });
}