import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydudes/widgets/search_bar.dart';

import '../controllers/controller.dart';

class SearchBottomSheet extends StatelessWidget {
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: controller.bottomSheetSize.value,
      minChildSize: 0.12,
      maxChildSize: 0.8,
      snap: true,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              color: Theme.of(context).colorScheme.background
          ),
          child: ListView(
            padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
            controller: scrollController,
            children: <Widget>[
              GlobalSearchBar()
            ],
          ),
        );
      },
    );
  }
}