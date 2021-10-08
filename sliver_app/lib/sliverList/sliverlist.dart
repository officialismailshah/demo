import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListList extends StatelessWidget {
  const SliverListList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.access_alarm),
            expandedHeight: 160.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                print(index);
                return ListTile(
                  leading: Icon(Icons.access_alarm),
                  title: Text('Some Data In Sliver List'),
                );
              },
              childCount: 1000,
            ),
          )
        ],
      ),
    );
  }
}
