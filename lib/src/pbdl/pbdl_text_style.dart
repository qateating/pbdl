import 'package:pbdl/src/pbdl/pbdl_font_descriptor.dart';
import 'package:pbdl/src/pbdl/pbdl_frame.dart';
import 'package:pbdl/src/pbdl/pbdl_node.dart';
import 'package:pbdl/src/pbdl/pbdl_paragraph_style.dart';
import 'package:pbdl/src/pbdl/pbdl_style.dart';

import 'pbdl_color.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pbdl_text_style.g.dart';

@JsonSerializable(explicitToJson: true)
class PBDLTextStyle extends PBDLNode {
  PBDLColor fontColor;
  String weight;
  PBDLFontDescriptor fontDescriptor;
  PBDLParagraphStyle paragraphStyle;

  @override
  final type = 'text_style';

  @override
  @JsonKey(ignore: true)
  String prototypeNodeUUID;

  @override
  @JsonKey(ignore: true)
  String UUID;

  @override
  @JsonKey(ignore: true)
  String name;

  @override
  @JsonKey(ignore: true)
  PBDLNode child;

  @override
  @JsonKey(ignore: true)
  PBDLStyle style;

  PBDLTextStyle({
    this.fontColor,
    this.weight,
    this.paragraphStyle,
    this.fontDescriptor,
  }) : super(
          '',
          '',
          false,
          null,
          null,
          '',
        );

  @override
  factory PBDLTextStyle.fromJson(Map<String, dynamic> json) =>
      _$PBDLTextStyleFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PBDLTextStyleToJson(this);
}