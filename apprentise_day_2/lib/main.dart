import 'package:apprentise_day_2/api_call/mockServiceClass.dart';
import 'package:flutter/material.dart';

import 'models/friends_feed.dart';

// import 'screens/json1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            MockClassForApi.getExploreData();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recipes Of the Days 🤷‍♀️',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(width: 350, height: 450),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/magazine_pics/card_bread.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(width: 350, height: 450),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/magazine_pics/card_bread.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(width: 350, height: 450),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/magazine_pics/card_bread.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  constraints: BoxConstraints.expand(width: 350, height: 450),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/magazine_pics/card_bread.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Recipes Of the Days 🤷‍♀️',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        FutureBuilder(
          future: MockClassForApi.getFriendFeeds(),
          builder: (BuildContext context, AsyncSnapshot<FriendFeedt> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return Container(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: snapshot.data!.feed!.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: AssetImage(
                            snapshot.data!.feed![index].profileImageUrl!),
                      ),
                    ),
                    title: Text(snapshot.data!.feed![index].comment!),
                    subtitle: Text(snapshot.data!.feed![index].timestamp!),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}



//  ElevatedButton(
//           onPressed: () {
//             Route route = MaterialPageRoute(builder: (context) => JsonOne());
//             Navigator.of(context).push(route);
//           },
//           child: Text('json1'),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: Text('json2'),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: Text('json3'),
//         ),