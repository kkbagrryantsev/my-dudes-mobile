import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class GlobalSearchBar extends StatelessWidget {
  final Controller controller = Get.find();
  final FocusNode focusNode = FocusNode();

  GlobalSearchBar({super.key}) {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        controller.updateSize(0.8);
        if (kDebugMode) {
          print(controller.bottomSheetSize.value);
        }
      } else {
        controller.updateSize(0.2);
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      focusNode: focusNode,
      leading: Icon(Icons.search),
      hintText: "Найти мероприятия, миты...",
    );
  }
}