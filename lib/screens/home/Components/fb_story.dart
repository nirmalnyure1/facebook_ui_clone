import 'package:flutter/material.dart';

class FbStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> story = [];
    for (int i = 0; i < 20; i++) {
      story.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              width: 68,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/ny.jpg",
                  fit: BoxFit.cover,
                  // height: 140,
                  // width: 65,
                ),
              ),
            ),
            Positioned(
                top: 10,
                left: 5,
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue.shade500,
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/ny.jpg',
                    ),
                  ),
                )),
            const Positioned(
              bottom: 3,
              left: 5,
              child: Text(
                'nirmal nyure',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
            )
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        child: Row(
          children: [
            Container(
              height: 150,
              width: 68,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              //width: MediaQuery.of(context).size.width / 4,
              //color: Colors.grey.shade200,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/ny.jpg',
                      height: 70,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 25,
                    bottom: 25,
                    //right: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                        color: const Color(0xff3263FB),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 3,
                      left: 3,
                      child: Text(
                        'Create Story',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            ...story
          ],
        ),
      ),
    );
  }
}
