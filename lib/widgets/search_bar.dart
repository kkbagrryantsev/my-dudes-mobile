import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => CustomBottomSheet(),
  );
}

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  double _bottomSheetSize = 0.1; // Initial size of the bottom sheet

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: _bottomSheetSize,
      minChildSize: 0.1,
      maxChildSize: 0.6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
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
                    _bottomSheetSize = 0.6; // Expand the bottom sheet
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