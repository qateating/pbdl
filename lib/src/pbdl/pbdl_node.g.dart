// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pbdl_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PBDLNode _$PBDLNodeFromJson(Map<String, dynamic> json) {
  return PBDLNode(
    json['UUID'] as String,
    json['name'] as String,
    json['isVisible'] as bool,
    json['boundaryRectangle'] == null
        ? null
        : PBDLFrame.fromJson(json['boundaryRectangle'] as Map<String, dynamic>),
    json['type'] as String,
    json['style'] == null
        ? null
        : PBDLStyle.fromJson(json['style'] as Map<String, dynamic>),
    json['prototypeNodeUUID'] as String,
    child: json['child'] == null
        ? null
        : PBDLNode.fromJson(json['child'] as Map<String, dynamic>),
  )..pbdfType = json['pbdfType'] as String;
}

Map<String, dynamic> _$PBDLNodeToJson(PBDLNode instance) => <String, dynamic>{
      'pbdfType': instance.pbdfType,
      'UUID': instance.UUID,
      'name': instance.name,
      'isVisible': instance.isVisible,
      'boundaryRectangle': instance.boundaryRectangle,
      'type': instance.type,
      'style': instance.style,
      'prototypeNodeUUID': instance.prototypeNodeUUID,
      'child': instance.child,
    };
