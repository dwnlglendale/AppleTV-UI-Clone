import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchNow extends StatefulWidget {
  const WatchNow({Key? key}) : super(key: key);

  @override
  _WatchNowState createState() => _WatchNowState();
}

class _WatchNowState extends State<WatchNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Top Movies",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        backgroundImage: AssetImage("assets/1.png"),
                        radius: 23,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          "assets/movies.png",
                          width: 40,
                          height: 40,
                        ),
                        title: Text("MOVIES"),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Up Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: Colors.white12,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            "assets/movie2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Ted Lasso",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 0.5,
                                      ),
                                      Text(
                                        "CONTINUE - S1,E4",
                                        style: TextStyle(color: Colors.white60),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.download_rounded,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "What To Watch",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white12,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [Image(image: AssetImage("assets/movie1.jpg"))],
                    ),
                    SizedBox(
                      width: 3.5,
                    ),
                    Row(
                      children: [Image(image: AssetImage("assets/movie2.jpg"))],
                    ),
                    SizedBox(
                      width: 3.5,
                    ),
                    Row(
                      children: [Image(image: AssetImage("assets/movie3.jpg"))],
                    ),
                    SizedBox(
                      width: 3.5,
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage("assets/movie4.jpeg"))
                      ],
                    ),
                    SizedBox(
                      width: 3.5,
                    ),
                    Row(
                      children: [Image(image: AssetImage("assets/movie5.jpg"))],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
