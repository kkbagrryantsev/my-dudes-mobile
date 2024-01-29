import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF232323),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              child: const SearchBar(
                //FIXME Replace the color with common one
                //FIXME Add searchBarTheme to app.dart
                hintText: "Найти мероприятия, миты",
                textStyle: MaterialStatePropertyAll(
                    TextStyle(color: Color(0xFFA9A9A9), fontSize: 18)),
                leading: Icon(
                  Icons.search,
                  color: Color(0xFFA9A9A9),
                ),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
                backgroundColor: MaterialStatePropertyAll(Color(0xFF444444)),
                surfaceTintColor: MaterialStatePropertyAll(Color(0x00000000)),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
