import 'package:flutter/material.dart';

class Postile extends StatelessWidget {
  final String profileimg;
  final String username;
  final String time;
  final String postimg;

  const Postile(
      {required this.profileimg,
      required this.username,
      required this.time,
      required this.postimg,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 350,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profileimg),
                    radius: 25,
                  ),
                  const SizedBox(width: 6),
                  Text(username,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text(
                    time,
                    style: const TextStyle(fontWeight: FontWeight.w100),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(postimg),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                )),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.heart_broken))
              ],
            )
          ],
        ),
      ),
    );
  }
}
