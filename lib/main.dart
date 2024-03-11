import 'package:flutter/material.dart';
import 'package:flutter_task1/data.dart';
import 'package:flutter_task1/storydata.dart';
import 'package:flutter_task1/widgets/postile.dart';
import 'package:flutter_task1/widgets/storytile.dart';

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
    StoryData dataas=StoryData();
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Text("Roger",
                            style: TextStyle(color: Colors.blue, fontSize: 30)),
                      ],
                    ),
              
                    const Spacer(),
                    OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "Add Content  +",
                          style: TextStyle(color:  Colors.blue),
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
                  itemCount: dataas.items.length,
                  separatorBuilder: (context, index) => const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return Storytile(image: dataas.items[index]["image"], time: dataas.items[index]["time"],name: dataas.items[index]["name"],proimg: dataas.items[index]["proimg"],);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
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
