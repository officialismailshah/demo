import 'package:flutter/material.dart';

class CardThree extends StatelessWidget {
  const CardThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/mag1.png'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Editor's Choice",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "The Art Of Dough",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 10,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'learning to the perfect bread',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text(
                    'Ray Wenderlich',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// learning to the perfect bread
// Ray Wenderlich