import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../models/Details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.studentInfo}) : super(key: key);

  final Details studentInfo;
  @override
  Widget build(BuildContext context) {
    List<List<String>>? facultyIndo = studentInfo.facultyInfo;
    return Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.blue.shade100,
              // collapsedHeight: 250,
              // snap: true,
              // stretch: true,
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Lottie.asset("assets/json/Profilebackground.json",
                    repeat: true),

                title: const Text(
                  "Profile",
                  style: TextStyle(color: Colors.black),
                ),
                // centerTitle: true,
              ),
              expandedHeight: 200,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: facultyIndo!.length, (context, index) {
              List<String>? value = facultyIndo[index];
              double percent = 76.0;
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: percent > 75
                      ? const LinearGradient(
                          colors: [(Colors.white), Colors.blueAccent],
                        )
                      : const LinearGradient(
                          colors: [Colors.white, Colors.redAccent],
                        ),
                  boxShadow: [
                    // BoxShadow(
                    //   color: (Colors.grey[900])!,
                    // ),
                    BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        offset: const Offset(0, 18),
                        blurRadius: 3,
                        spreadRadius: -10)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          // color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value[8],
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(height: 10.0),
                              const Text(
                                "Practical",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      value[2],
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Subject Code : ${value[1]}",
                                  ),
                                  const SizedBox(width: 15.0),

                                  // Container(
                                  //   height: 100,
                                  //   // width: ,
                                  //   child: Text(
                                  //     value[8],
                                  //     style: const TextStyle(
                                  //       fontSize: 20.0,
                                  //       fontWeight: FontWeight.bold,
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Faculty : ${value[7]}",
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      value[5],
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Credit : ${value[3]}",
                                      maxLines: 2,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Room No : ${value[9]}",
                                      maxLines: 3,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                  ],
                ),
              );
            }))
          ],
        ));
  }
}
