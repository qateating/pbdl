import 'package:pbdl/src/pbdl/pbdl_style.dart';
import 'package:pbdl/src/pbdl/pbdl_frame.dart';
import 'package:pbdl/src/pbdl/pbdl_node.dart';
import 'abstract_pbdl_node_factory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'polygon.g.dart';

@JsonSerializable()
class PBDLPolygon implements PBDLNodeFactory, PBDLNode {
  @override
  String pbdfType = 'polygon';

  var boundaryRectangle;

  var UUID;

  PBDLPolygon({
    bool edited,
    bool isClosed,
    pointRadiusBehaviour,
    List points,
    this.UUID,
    booleanOperation,
    exportOptions,
    PBDLFrame this.boundaryRectangle,
    isFixedToViewport,
    isFlippedHorizontal,
    isFlippedVertical,
    isLocked,
    isVisible,
    layerListExpandedType,
    name,
    nameIsFixed,
    resizingConstraint,
    resizingType,
    rotation,
    sharedStyleID,
    shouldBreakMaskChain,
    hasClippingMask,
    clippingMaskMode,
    userInfo,
    maintainScrollPosition,
    type,
    pbdfType,
    this.style,
  });

  @override
  PBDLNode createPBDLNode(Map<String, dynamic> json) =>
      PBDLPolygon.fromJson(json);
  factory PBDLPolygon.fromJson(Map<String, dynamic> json) =>
      _$PolygonFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PolygonToJson(this);

  @override
  bool isVisible;

  @override
  String name;

  @override
  String prototypeNodeUUID;

  @override
  PBDLStyle style;

  @override
  String type;
}
