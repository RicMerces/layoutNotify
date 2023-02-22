import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xff145BFF),
              Color(0xff2A8DFF),
              Color(0xff3985FF),
            ],
          ),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      onPressed: () {},
    );
  }
}
