import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  List posts = [
    {"title": 'post 1 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 2 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 3 ', "caption": 'lorem', "image": '', 'time': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            child: Text("Hellooo"),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.zero,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/bmw.jpg'),
                        ),
                        title: Text("Codewithowais"),
                        subtitle: Text("Hellooo........"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.delete_outline_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text('data ${posts[index]['title']}'),
                    Image.asset('assets/images/bmw.jpg'),
                    Container(height: 5, color: Colors.black),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


/**
 * import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  List posts = [
    {"title": 'post 1 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 2 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 3 ', "caption": 'lorem', "image": '', 'time': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          child: Text("Hellooo"),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.zero,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/bmw.jpg'),
                        ),
                        title: Text("Codewithowais"),
                        subtitle: Text("Hellooo........"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.delete_outline_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text('data ${posts[index]['title']}'),
                    Image.asset('assets/images/bmw.jpg'),
                    Container(height: 5, color: Colors.black),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

 */