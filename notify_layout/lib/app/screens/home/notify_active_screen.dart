import 'package:flutter/material.dart';
import 'package:notify_layout/app/screens/home/widget/enum/home_type_enum.dart';
import 'package:notify_layout/app/screens/home/widget/notify_list_item.dart';

class NotifyActiveScreen extends StatelessWidget {
  const NotifyActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calendario'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) => const NotifyListItem(
                title: 'Alo',
                description: 'preciso sempre esta assistinndo ',
                homeType: HomeType.ativa,
                emoji: 'assets/pics/emoji_descarado.png',
              ),
            ),
          ],
        ));
  }
}
