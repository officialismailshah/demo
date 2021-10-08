import 'package:flutter/material.dart';

class ListViewList extends StatelessWidget {
  const ListViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        thickness: 10,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            print(index);
            return ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Some Text in ListView'),
            );
          },
        ),
      ),
    );
  }
}
