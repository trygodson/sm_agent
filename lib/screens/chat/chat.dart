import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dweller/screens/chatmessage/chatmessage.dart';
import 'package:dweller/theme/color.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    body() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Message',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                        child: const Icon(
                          Icons.mode_edit,
                          color: primary,
                          size: 32,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27.0),
                    gapPadding: 4,
                  ),
                  fillColor: Colors.white,
                  labelStyle:
                      TextStyle(color: Colors.grey[500], fontSize: 14.0),
                  labelText: 'Search',
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                    size: 28.0,
                  ),
                )),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'People Close By',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 115,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    UserWidget(
                      family: 'Selma',
                      pic: 'user1.jpg',
                    ),
                    UserWidget(
                      family: 'Emeline',
                      pic: 'user2.jpg',
                    ),
                    UserWidget(
                      family: 'Sonia',
                      pic: 'user3.jpg',
                    ),
                    UserWidget(
                      family: 'Jean',
                      pic: 'user9.jpg',
                    ),
                    UserWidget(
                      family: 'Jack',
                      pic: 'user5.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  'Messages',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: ListView(
                    children: [
                      MessageWidget(
                        family: 'Emeline',
                        msg:
                            'Hello how are you ? i am going to market. do you want burgers?',
                        pic: 'user2.jpg',
                        time: '23min',
                        count: 1,
                        ontap: () => Get.to(MessageScreen()),
                      ),
                      MessageWidget(
                        family: 'Selma',
                        msg:
                            'We were on the runways at the military hanger, there is a plane in it.',
                        pic: 'user1.jpg',
                        time: '26min',
                        ontap: () => Get.to(MessageScreen()),
                      ),
                      MessageWidget(
                        family: 'Jean',
                        msg:
                            'i received my new watch that i ordered from Amazon.',
                        pic: 'user9.jpg',
                        time: '33min',
                        ontap: () => Get.to(MessageScreen()),
                      ),
                      MessageWidget(
                        family: 'Sonia',
                        msg:
                            'i just arrived in front of the school. i\'m waiting for you hurry up !',
                        pic: 'user3.jpg',
                        time: '46min',
                        ontap: () => Get.to(MessageScreen()),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return body();
  }
}

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {Key? key,
      required this.family,
      required this.msg,
      required this.pic,
      required this.time,
      required this.ontap,
      this.count = 0})
      : super(key: key);

  final String family;
  final String msg;
  final String pic;
  final String time;
  final int count;
  final GestureTapCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: lite,
                        borderRadius: BorderRadius.circular(45),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/86506519?v=4'))),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(family,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(
                    msg,
                    style: TextStyle(
                        fontSize: 13, color: Colors.grey.shade700, height: 1.5),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 12,
                      color: count == 0 ? primary.withOpacity(0.7) : primary),
                ),
                const SizedBox(height: 10),
                count == 0
                    ? Container()
                    : CircleAvatar(
                        radius: 15,
                        backgroundColor: primary,
                        child: Text(
                          '$count',
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key, required this.family, required this.pic})
      : super(key: key);

  final String family;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(45),
          ),
          child: Container(
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    image: const DecorationImage(
                        image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/86506519?v=4',
                    ))),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          family,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
