import 'package:facebook_ul_clone/widgets/HomeWidgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class WhatsInMind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/ny.jpg'),
              ),
            ),
            Expanded(
              flex: 4,
              child: MyTextFormField(
                hintText: 'whats in your mind',
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'enter you first name';
                  } else
                    return null;
                },
                onSaved: (String? newValue) {},
              ),
            ),
          ],
        ),
        const Divider(
          color: Color(0xffd4d4d4),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  Text(
                    'Live',
                    style: TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.photo_library,
                    color: Colors.green.shade700,
                  ),
                  const Text(
                    'Photo',
                    style: TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  Text(
                    'Room',
                    style: TextStyle(
                        color: Color(0xff7b7b7b),
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
