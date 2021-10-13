import 'package:apprentise_day_2/api_call/mockServiceClass.dart';
import 'package:apprentise_day_2/models/explore_data.dart';
import 'package:flutter/material.dart';

class JsonOne extends StatelessWidget {
  const JsonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Json One Data'),
      ),
      body: FutureBuilder(
        future: MockClassForApi.getExploreData(),
        builder: (BuildContext context, AsyncSnapshot<Autogenerated> snapshot) {
          print(snapshot);
          return ListView.builder(
            itemCount: snapshot.data!.recipes!.length,
            itemBuilder: (BuildContext context, int index) {
              return Wrap(
                children: [
                  Container(
                    child: Text('${snapshot.data!.recipes![index].ingredients}'),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}