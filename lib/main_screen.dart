import 'package:another_bookapps/detail_screen.dart';
import 'package:another_bookapps/model/podcast_data.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFFFFBEC),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi There,",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Putra Prayogi",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                    )),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            children: [
              HeaderView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TRENDING PODCAST",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              color: Color(0xFFD9534F),
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  separatorBuilder: ((context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  }),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    PodcastData podcast = podcastDataList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(
                            podcast: podcast,
                          );
                        }));
                      },
                      child: Row(children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.black26.withOpacity(0.2),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                  offset: Offset(0, 0))
                            ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                podcast.imageAsset,
                                // height: 100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                podcast.nama,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "by " + podcast.authors,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black38,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 0,
                                color: Colors.black12,
                                offset: Offset(0, 3))
                          ]),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF96CEB4),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow_outlined),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ]),
                    );
                  }),
                  itemCount: podcastDataList.length,
                ),
              ),
            ],
          )),
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFF96CEB4),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "EP498 - Social Jaksel Warrior",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "by Oza Rangkuti",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xFFD9534F),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow_rounded),
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/ep498.png",
                        height: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class TrendingPodcast extends StatelessWidget {
//   const TrendingPodcast({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "TRENDING PODCAST",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//                 ),
//                 InkWell(
//                     onTap: () {},
//                     child: Text(
//                       "See All",
//                       style: TextStyle(
//                           color: Color(0xFFD9534F),
//                           fontWeight: FontWeight.w600),
//                     )),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: Row(children: [
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     decoration: BoxDecoration(boxShadow: [
//                       BoxShadow(
//                           color: Colors.black26.withOpacity(0.2),
//                           blurRadius: 10,
//                           spreadRadius: 0,
//                           offset: Offset(0, 0))
//                     ]),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.asset(
//                         "assets/images/kesel_aje.jfif",
//                         // height: 100,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Kesel Aje",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w700),
//                       ),
//                       Text(
//                         "by Oza Rangkuti",
//                         style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black38,
//                             fontWeight: FontWeight.w500),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                     BoxShadow(
//                         blurRadius: 5,
//                         spreadRadius: 0,
//                         color: Colors.black12,
//                         offset: Offset(0, 3))
//                   ]),
//                   child: CircleAvatar(
//                     backgroundColor: Color(0xFF96CEB4),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.play_arrow_outlined),
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
