import 'package:json_annotation/json_annotation.dart';

part 'pb_paragraph_style.g.dart';

@JsonSerializable()
class PBParagraphStyle {
  PBParagraphStyle({this.alignment});
  int alignment;

  factory PBParagraphStyle.fromJson(Map<String, dynamic> json) =>
      _$PBParagraphStyleFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PBParagraphStyleToJson(this);
}

enum ALIGNMENT {
  LEFT,
  RIGHT,
  CENTER,
  JUSTIFY,
}
