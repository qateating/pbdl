import 'package:json_annotation/json_annotation.dart';
import 'package:pbdl/src/pbdl/abstract_pbdl_node_factory.dart';
import 'package:pbdl/src/pbdl/pbdl_frame.dart';
import 'package:pbdl/src/pbdl/pbdl_node.dart';
import 'package:pbdl/src/pbdl/pbdl_style.dart';

part 'pbdl_override_property.g.dart';

@JsonSerializable(explicitToJson: true)
class PBDLOverrideProperty extends PBDLNode implements PBDLNodeFactory {
  /// Value of the override property
  var value;

  @override
  final type;

  @override
  @JsonKey(ignore: true)
  bool isVisible;

  @override
  @JsonKey(ignore: true)
  PBDLFrame boundaryRectangle;

  @override
  @JsonKey(ignore: true)
  PBDLStyle style;

  @override
  @JsonKey(ignore: true)
  String prototypeNodeUUID;

  PBDLOverrideProperty(
    String UUID,
    String name,
    this.type,
    this.value,
  ) : super(
          UUID,
          name,
          true,
          null,
          null,
          null,
        );

  factory PBDLOverrideProperty.fromJson(Map<String, dynamic> json) =>
      _$PBDLOverridePropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PBDLOverridePropertyToJson(this);
}