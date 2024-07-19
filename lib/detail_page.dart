import 'package:day4/animation.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 400,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/emma.jpg'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [Colors.black, Colors.black.withOpacity(0.2)],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustumAnimation(
                              1,
                              Text(
                                'Emma Watson',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustumAnimation(
                                  1.3,
                                  Text(
                                    '60 Videos',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CustumAnimation(
                                  1.3,
                                  Text(
                                    '240k Subscribers',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.black,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const  CustumAnimation(
                                  1.4, Text(
                            'In eiusmod do duis voluptate voluptate ipsum amet incididunt ullamco officia cupidatat anim cillum sit. Pariatur ea sit pariatur ut anim commodo occaecat. Pariatur ex reprehenderit consectetur culpa.',
                            style: TextStyle(
                                color: Colors.grey, fontSize: 15, height: 1.4),
                          ),),
                          const SizedBox(
                            height: 30,
                          ),
                          const CustumAnimation(
                                  1.6, Text(
                            'Born',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),),
                          const SizedBox(
                            height: 10,
                          ),
                          const CustumAnimation(
                                  1.6, Text(
                            'April 15th 1990, Paris France',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),),
                          const SizedBox(
                            height: 20,
                          ),
                          const  CustumAnimation(
                                  1.6, Text(
                            'Nationnality',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),),
                          const SizedBox(
                            height: 10,
                          ),
                          const  CustumAnimation(
                                  1.6, Text(
                            'British',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),),
                          const SizedBox(
                            height: 20,
                          ),
                          const  CustumAnimation(
                                  1.8, Text(
                            'Videos',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                videoWidget('assets/images/emma-1.jpg'),
                                videoWidget('assets/images/emma-2.jpg'),
                                videoWidget('assets/images/emma-3.jpg'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow[800],
                ),
                child: const Center(
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget videoWidget(url) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black, Colors.black.withOpacity(.3)],
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
