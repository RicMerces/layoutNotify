import 'package:flutter/material.dart';
import 'package:notify_layout/app/screens/home/widget/enum/home_type_enum.dart';

class NotifyListItem extends StatelessWidget {
  const NotifyListItem({
    required this.emoji,
    required this.title,
    required this.homeType,
    required this.description,
    Key? key,
  }) : super(key: key);

  final String emoji;

  final String title;

  final String description;

  final HomeType homeType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: homeType == HomeType.ativa
                    ? [
                        Colors.white,
                        Colors.white,
                      ]
                    : homeType == HomeType.passada
                        ? [
                            const Color(0xff0A0E2A),
                            const Color(0xff0B145F),
                          ]
                        : [
                            const Color(0xff3757FF),
                            const Color(0xff2F8BFF),
                            const Color(0xff3A86FF),
                          ],
              )),
          height: MediaQuery.of(context).size.height * 0.13,
          width: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const AssetImage('assets/pics/emoji_descarado.png'),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Twemoji_1f600.svg/1200px-Twemoji_1f600.svg.png',
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: homeType == HomeType.ativa
                              ? const Color(0xff1A69FF)
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 03,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          color: homeType == HomeType.ativa
                              ? const Color(0xff272727)
                              : Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.repeat,
                        size: 15,
                        color: homeType == HomeType.ativa
                            ? const Color(0xff1A69FF)
                            : Colors.white,
                      ),
                      Text(
                        '20/01/2022',
                        style: TextStyle(
                          color: homeType == HomeType.ativa
                              ? const Color(0xff272727)
                              : Colors.white,
                        ),
                        // style: text,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
