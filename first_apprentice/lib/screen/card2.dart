import 'package:flutter/material.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({Key? key}) : super(key: key);

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
              image: AssetImage('assets/mag5.png'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  title: Text('Mike Kartz',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text('Smoothie Connoisseur'),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child:
                          Image(image: AssetImage('assets/author_katz.jpeg'))),
                ),
              ],
            ),
            Positioned(
              left: 20,
              bottom: 40,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text('Smotthie',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Text(
                'Recipe',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
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