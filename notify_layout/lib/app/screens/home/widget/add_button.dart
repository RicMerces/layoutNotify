import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.purple,
                ],
              ),
            ),
            child: const Icon(
              Icons.diamond_sharp,
              size: 30,
            ),
          ),
          onPressed: () => showDialog(
            context: context,
            builder: ((context) => Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(20),
                    height: 450,
                    width: 300,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/svg/SUCCESS.svg'),
                        const Text(
                          'Sucesso ! ',
                          style: TextStyle(
                            color: Color(0xff395BFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Sua Notificação foi criada e adicionada a Home de Notificações ativas e caso ela seja recorrente ela também sera encontrada na aba de Recorrentes. Aguarde que em breve vai rolar um Notify ! ',
                          style: TextStyle(
                            color: Color(0xffA1A1A1),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 240,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xff238AFF),
                                        Color(0xff0278FF),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: const Text(
                                    'Criar',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
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
          onPressed: () => showDialog(
            context: context,
            builder: ((context) => Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(20),
                    height: 450,
                    width: 300,
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/svg/SAVEORDELETE.svg'),
                        const Text(
                          'O que você deseja fazer com essa ',
                          style: TextStyle(
                            color: Color(0xff0D144B),
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          'Notificação ?',
                          style: TextStyle(
                            color: Color(0xff395BFF),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xff48F3A1),
                                      Color(0xff31C87F),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Ressucitar",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffFF4C48),
                                      Color(0xffFF2E22),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Deletar",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                ],
              ),
            ),
            child: const Icon(
              Icons.electric_bolt_outlined,
              size: 30,
            ),
          ),
          onPressed: () => showDialog(
            context: context,
            builder: ((context) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/aderiva.svg'),
                      const Text(
                        'Nenhuma Noticação avistada',
                        style: TextStyle(
                          color: Color(0xff395BFF),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff48F3A1),
                                    Color(0xff31C87F),
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Ressucitar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xffFF4C48),
                                    Color(0xffFF2E22),
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Deletar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
