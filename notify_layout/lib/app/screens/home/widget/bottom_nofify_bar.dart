import 'package:flutter/material.dart';

class BottomNofifyBar extends StatelessWidget {
  const BottomNofifyBar({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      shape: const CircularNotchedRectangle(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        padding: const EdgeInsets.only(top: 10),
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Column(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 30.0,
                    color: isSelected == true
                        ? const Color(0xff2D83FF)
                        : const Color(0xff6B6C7E),
                  ),
                  Text(
                    'Ativas',
                    style: TextStyle(
                      color: isSelected == true
                          ? const Color(0xff2D83FF)
                          : const Color(0xff6B6C7E),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(
                    Icons.repeat,
                    size: 30.0,
                    color: isSelected == true
                        ? const Color(0xff2D83FF)
                        : const Color(0xff6B6C7E),
                  ),
                  Text(
                    'Recorrentes',
                    style: TextStyle(
                      color: isSelected == true
                          ? const Color(0xff2D83FF)
                          : const Color(0xff6B6C7E),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    size: 30.0,
                    color: isSelected == true
                        ? const Color(0xff2D83FF)
                        : const Color(0xff6B6C7E),
                  ),
                  Text(
                    'Passadas',
                    style: TextStyle(
                      color: isSelected == true
                          ? const Color(0xff2D83FF)
                          : const Color(0xff6B6C7E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
