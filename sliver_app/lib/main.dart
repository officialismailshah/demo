import 'package:flutter/material.dart';
import 'package:sliver_app/listview/listview.dart';
import 'package:sliver_app/sliverList/sliverlist.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => ListViewList());
                Navigator.push(context, route);
              },
              child: Text('ListView')),
          ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => SliverListList());
                Navigator.push(context, route);
              },
              child: Text('Sliver List'))
        ],
      ),
    );
  }
}

// CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             floating: true,
//             title: Text('Material App Bar'),
//             flexibleSpace: Container(
//               height: 100,
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate((context, index) {
//               print(index);
//               return ListTile(
//                 title: Text('Some Data'),
//               );
//             }, childCount: 1000),
//           ),
//         ],
//       ),