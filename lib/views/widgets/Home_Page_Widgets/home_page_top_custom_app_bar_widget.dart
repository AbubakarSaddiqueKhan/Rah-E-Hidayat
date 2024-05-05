import 'package:flutter/material.dart';

class HomePageTopCustomAppBar extends StatelessWidget {
  const HomePageTopCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        Container(
          width: height * 0.06,
          height: height * 0.06,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/bkr.jpg"),
                  fit: BoxFit.contain)),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Assalam O Alaikum",
              style: TextStyle(color: Colors.white, fontFamily: "Archivo"),
            ),
            Text(
              "Abubakar",
              style: TextStyle(color: Colors.white, fontFamily: "Archivo"),
            ),
          ],
        ),
        const Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
