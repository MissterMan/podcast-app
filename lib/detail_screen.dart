import 'package:another_bookapps/model/podcast_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final PodcastData podcast;
  DetailScreen({required this.podcast});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFBEC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(podcast.nama,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            Text(
              podcast.authors,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black26),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ios_share,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      podcast.imageAsset,
                      height: 200,
                    ),
                  ),
                ),
                Text(
                  podcast.nama,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person_add_alt_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10.0K",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.play_circle_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10.0K",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite_border_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "10.0K",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FollowButton(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All episodes (498)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/kesel_aje_ep497.jfif"),
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
                                    "EP497 - Mental Healing Jokes",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Jan 3",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: SizedBox(
                                          child: Text(
                                            "•",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "3 min",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/kesel_aje_ep497.jfif"),
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
                                    "EP497 - Mental Healing Jokes",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Jan 3",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: SizedBox(
                                          child: Text(
                                            "•",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "3 min",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                  "assets/images/kesel_aje_ep497.jfif"),
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
                                    "EP497 - Mental Healing Jokes",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Jan 3",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: SizedBox(
                                          child: Text(
                                            "•",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "3 min",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black45),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class FollowButton extends StatefulWidget {
  const FollowButton({Key? key}) : super(key: key);

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  String _followText = "Follow +";
  Color _color = Color(0xFFD9534F);
  Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            _followText = "Unfollow";
            _textColor = Color(0xFFD9534F);
            _color = Colors.transparent;
          });
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              return _color;
            }),
            side: MaterialStateProperty.resolveWith((states) {
              return BorderSide(color: _textColor);
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: Text(
          _followText,
          style: TextStyle(color: _textColor),
        ));
  }
}
