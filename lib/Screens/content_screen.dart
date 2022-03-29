import 'package:flutter/material.dart';
import 'package:netflix_design/Models/entertainment.dart';
import '../Models/dummy_data.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        backgroundColor: Color(0xff333333),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
        ),
        title: Container(
          height: 40,
          child: Image.network('https://w7.pngwing.com/pngs/26/116/png-transparent-netflix-logo-netflix-television-show-streaming-media-film-netflix-logo-television-text-trademark.png'),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            child: Image.network('https://toppng.com/uploads/preview/netflix-logo-png-11593869496jqso5gxgsy.png'),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              children: [
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: dummyMovies.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Entertainment dummyData = dummyMovies[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 150,
                          width: 220,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(dummyMovies[index].coverUrl),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Continue watching',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: dummySeries.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      //Entertainment dummyData = dummySeries[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Stack(
                            children: [
                              Container(
                                height: 300,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(dummySeries[index].coverUrl),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                    ),
                                    color: Colors.white24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Play', style: TextStyle(color: Colors.black, fontSize: 20),),
                                      SizedBox(width: 10,),
                                      Icon(Icons.play_circle_filled, color: Colors.black,),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 35,
                                right: 0,
                                left: 0,
                                child: Divider(
                                  color: Colors.white,
                                  thickness: 4,
                                ),
                              ),
                              Positioned(
                                bottom: 35,
                                right: 40,
                                left: 0,
                                child: Divider(
                                  color: Colors.red,
                                  thickness: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'My List',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: myList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Entertainment dummyData = myList[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 300,
                          width: 150,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(myList[index].coverUrl),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
