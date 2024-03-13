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
      minChildSize: 0.2,
      maxChildSize: 0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.black,
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).padding.bottom + kBottomNavigationBarHeight,
          ),
          child: ListView(
            controller: scrollController,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Type to search...',
                ),
                autofocus: true,
                onTap: () {
                  setState(() {
                    _bottomSheetSize = 0.8; // Expand the bottom sheet
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}