import 'package:flutter/material.dart';
import 'package:flutter_task1/data.dart';
import 'package:flutter_task1/widgets/postile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "homepage",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Data data=Data();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.pink.shade200,Colors.white],begin: Alignment.topRight,end: Alignment.center),
        ),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.blue,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Text("Roger",
                            style: TextStyle(color: Colors.blue, fontSize: 30)),
                      ],
                    ),
                    Spacer(),
                    OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "Add Content  +",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 190,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 50,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 5,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: data.items.length,
                separatorBuilder: (context, index) =>const  SizedBox(width: 10),
                itemBuilder: (context, index) {
                  return  Postile(profileimg: data.items[index]["profileimg"], username: data.items[index]["username"], time: data.items[index]["time"].toString(), postimg: data.items[index]["postimg"]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
