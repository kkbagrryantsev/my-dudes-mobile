import 'package:flutter/material.dart';

class SearchBottomSheet extends StatefulWidget {
  @override
  _SearchBottomSheetState createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {
  double _bottomSheetSize = 0.2; // Initial size of the bottom sheet

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: _bottomSheetSize,
      minChildSize: 0.15,
      maxChildSize: 0.9,
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
              SearchBar(
                leading: Icon(Icons.search),
                hintText: "Найти мероприятия, миты...",
                onTap: () {
                  setState(() {
                    _bottomSheetSize = 0.9;
                  });
                },
              )
            ],
          ),
        );
      },
    );
  }
}
