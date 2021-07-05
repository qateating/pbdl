// maybe we dont need this one anymore, or we might use it for PBDL

import 'package:pbdl/pbdl/abstract_design_node_factory.dart';
import 'package:pbdl/pbdl/pbdl_node.dart';
import 'package:quick_log/quick_log.dart';

import 'pbdl_screen.dart';

class PBDLPage implements PBDLNodeFactory {
  var log = Logger('DesignPage');

  String id;
  String imageURI;
  String name;
  bool convert = true;
  List<PBDLScreen> screens = [];

  PBDLPage({
    this.name,
    this.id,
  }) {
    screens = [];
  }

  void addScreen(PBDLScreen item) {
    screens.add(item);
  }

  List<PBDLScreen> getPageItems() {
    log.info('We encountered a page that has ${screens.length} page items.');
    return screens;
  }

  /// Parabeac Design File
  Map<String, dynamic> toPBDF() {
    Map<String, dynamic> result = {};
    result['pbdfType'] = pbdfType;
    result['id'] = id;
    result['name'] = name;
    result['convert'] = convert;

    List<Map> tempScreens = [];
    for (var screen in screens) {
      tempScreens.add(screen.toPBDF());
    }
    result['screens'] = tempScreens;
    return result;
  }

  @override
  String pbdfType = 'design_page';

  @override
  PBDLNode createDesignNode(Map<String, dynamic> json) {
    // TODO: implement createDesignNode
    throw UnimplementedError();
  }

  factory PBDLPage.fromPBDF(Map<String, dynamic> json) {
    var page = PBDLPage(name: json['name'], id: json['id']);
    if (json.containsKey('screens')) {
      (json['screens'] as List)?.forEach((value) {
        if (value != null && (value['convert'] ?? true)) {
          page.screens
              .add(PBDLScreen.fromPBDF(value as Map<String, dynamic>));
        }
      });
    }
    return page;
  }

  @override
  PBDLNode createPBDLNode(Map<String, dynamic> json) {
    // TODO: implement createPBDLNode
    throw UnimplementedError();
  }
}