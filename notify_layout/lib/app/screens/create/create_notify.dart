import 'package:flutter/material.dart';

class CreateNotify extends StatelessWidget {
  const CreateNotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: const [
            Icon(
              Icons.arrow_back_rounded,
              color: Color(0xff272D34),
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Criar Notify',
              style: TextStyle(
                color: Color(0xff272D34),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Titulo da Notificação',
              style: TextStyle(
                color: Color(0xff272D34),
              ),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0xffFAFAFA),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: const Color(0xff272727).withOpacity(0.2),
                        width: 2.0,
                      ),
                    ),
                    hintText: 'Ex: Comprar Pão',
                    hintStyle: const TextStyle(
                      color: Color(0xffC2C2C2),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 300,
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
          ],
        ),
      ),
    );
  }
}
