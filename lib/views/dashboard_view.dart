import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List posts = [
    {"title": 'post 1 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 2 ', "caption": 'lorem', "image": '', 'time': ''},
    {"title": 'post 3 ', "caption": 'lorem', "image": '', 'time': ''},
  ];

  addPost() {
    posts.add({
      "title": 'post ${posts.length + 1} ',
      "caption": 'lorem',
      "image": '',
      'time': '',
    });
    setState(() {});
    print(posts);
  }

  deletePost(index) {
    posts.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: ListView.builder(
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
                          onPressed: () {
                            deletePost(index);
                          },
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          addPost();
        },
      ),
    );
  }
}


// List posts = [
//   {
//     "title": 'post 1 ',
//     "caption": 'lorem',
//     "image": '',
//     'time': '',
//   },
//   {
//     "title": 'post 2 ',
//     "caption": 'lorem',
//     "image": '',
//     'time': '',
//   },
//   {
//     "title": 'post 3 ',
//     "caption": 'lorem',
//     "image": '',
//     'time': '',
//   },
// ];

// for(var i = 0; i < posts.length; i++) {
//   print(post[i]['title']);
//   print(post[i]['caption']);
// }