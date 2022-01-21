import 'package:json_annotation/json_annotation.dart';
import 'package:pbdl/src/input/figma/entities/style/figma_fill.dart';
import 'package:pbdl/src/pbdl/pbdl_text_style.dart';

import '../layers/figma_font_descriptor.dart';
import '../layers/figma_paragraph_style.dart';
import 'figma_color.dart';
part 'figma_text_style.g.dart';

@JsonSerializable()
class FigmaTextStyle {
  String fontFamily;

  String fontPostScriptName;

  @JsonKey(defaultValue: 0)
  num paragraphSpacing;

  @JsonKey(defaultValue: 0)
  num paragraphIndent;

  @JsonKey(defaultValue: 0)
  num listSpacing;

  bool italics;

  num fontWeight;

  num fontSize;

  @JsonKey(defaultValue: 'ORIGINAL')
  String textCase;

  @JsonKey(defaultValue: 'NONE')
  String textDecoration;

  @JsonKey(defaultValue: 'NONE')
  String textAutoResize;

  String textAlignHorizontal;

  String textAlignVertical;

  num letterSpacing;

  List<FigmaFill> fills;

  String hyperLink;

  @JsonKey(defaultValue: {})
  Map<String, num> opentypeFlags;

  num lineHeightPx;

  @JsonKey(defaultValue: 100)
  num lineHeightPercent;

  num lineHeightPercentFontSize;

  String lineHeightUnit;

  FigmaTextStyle({
    this.fontFamily,
    this.fontPostScriptName,
    this.paragraphSpacing,
    this.paragraphIndent,
    this.listSpacing,
    this.italics,
    this.fontWeight,
    this.fontSize,
    this.textCase,
    this.textDecoration,
    this.textAutoResize,
    this.textAlignHorizontal,
    this.textAlignVertical,
    this.letterSpacing,
    this.fills,
    this.hyperLink,
    this.opentypeFlags,
    this.lineHeightPx,
    this.lineHeightPercent,
    this.lineHeightPercentFontSize,
    this.lineHeightUnit,
  });

  Map<String, dynamic> toJson() => _$FigmaTextStyleToJson(this);
  factory FigmaTextStyle.fromJson(Map<String, dynamic> json) =>
      _$FigmaTextStyleFromJson(json);

  PBDLTextStyle interpretTextStyle() {
    return PBDLTextStyle(
        // fontColor: fontColor.interpretColor(),
        // weight: weight,
        // paragraphStyle: paragraphStyle.interpretParagraphStyle(),
        // fontDescriptor: fontDescriptor.interpretFontDescriptor(), TODO: Fix
        );
  }
}
