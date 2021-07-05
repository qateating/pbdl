import 'package:pbdl/input/sketch/entities/style/color.dart';
import 'package:pbdl/input/sketch/entities/style/context_settings.dart';
import 'package:pbdl/input/sketch/entities/style/gradient.dart';
import 'package:json_annotation/json_annotation.dart';

part 'border.g.dart';

@JsonSerializable()
class Border {
  @JsonKey(name: '_class')
  final String classField;

  final bool isEnabled;

  final double fillType;

  final Color color;
  final ContextSettings contextSettings;
  final Gradient gradient;
  final double position;

  final double thickness;

  Border(
      {this.classField,
      this.color,
      this.contextSettings,
      this.fillType,
      this.gradient,
      this.isEnabled,
      this.position,
      this.thickness});

  factory Border.fromJson(Map json) => _$BorderFromJson(json);
  Map toJson() => _$BorderToJson(this);
}