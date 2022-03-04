import 'package:facebook_ul_clone/screens/home/Components/create_room.dart';
import 'package:facebook_ul_clone/screens/home/Components/fb_status.dart';
import 'package:facebook_ul_clone/screens/home/Components/fb_story.dart';
import 'package:facebook_ul_clone/screens/home/Components/what_in_mind.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return View();
              //     },
              //   ),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: WhatsInMind(),
            ),
          ),
          Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
          CreateRoom(),
          Container(
            height: 10,
            color: Color(0xffc9ccd2),
          ),
          FbStory(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 10,
              color: Color(0xffc9ccd2),
            ),
          ),
          FbStatus(
            showSingleImage: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 10,
              color: Color(0xffc9ccd2),
            ),
          ),
          FbStatus(
            showDoubleImage: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 10,
              color: Color(0xffc9ccd2),
            ),
          ),
          FbStatus(
            showDoubleImage: true,
            showSingleImage: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              height: 10,
              color: Color(0xffc9ccd2),
            ),
          ),
          FbStatus(),
          FbStatus(),
        ],
      ),
    );
  }
}
