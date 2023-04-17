// ignore_for_file: must_be_immutable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:messenger/pages/components/chat_card.dart';
import 'package:messenger/pages/components/status.dart';
import '../model/user_info.dart';

class ChatsPage extends StatelessWidget {
  ChatsPage({super.key});

  List<UserInfo> users = [
    UserInfo(
      userName: 'Ahmad',
      supTitle: 'obs',
      image: 'assets/images/u1.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Yasmeen',
      supTitle: 'hy',
      image: 'assets/images/u2.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Sohib',
      supTitle: 'hi',
      image: 'assets/images/u3.png',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Anas',
      supTitle: 'welcome',
      image: 'assets/images/u4.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Layla',
      supTitle: 'ok ?',
      image: 'assets/images/u5.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Mohamad',
      supTitle: 'yeah',
      image: 'assets/images/u6.jpeg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Israa',
      supTitle: 'no',
      image: 'assets/images/u7.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Fadi',
      supTitle: 'hello',
      image: 'assets/images/u8.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Asmaa',
      supTitle: 'hello',
      image: 'assets/images/u9.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Alena',
      supTitle: 'hello',
      image: 'assets/images/u10.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Mostafa',
      supTitle: 'hello',
      image: 'assets/images/u11.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Hazem',
      supTitle: 'hello',
      image: 'assets/images/u12.jpg',
      time: DateTime.now(),
    ),
    UserInfo(
      userName: 'Selena',
      supTitle: 'hello',
      image: 'assets/images/u13.jpg',
      time: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text('Search'),
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 75,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  // UserInfo userInfo = users.reversed.toList()[index];
                  final random = Random();
                  UserInfo userInfo = users[random.nextInt(users.length)];
                  return Status(
                    userName: userInfo.userName!,
                    image: userInfo.image!,
                  );
                },
              ),
            ),
          ),
          // Expanded(
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              UserInfo userInfo = users[index];
              return ChatCard(
                userName: userInfo.userName!,
                subTitle: userInfo.supTitle!,
                image: userInfo.image!,
                time: userInfo.time!,
              );
            },
            separatorBuilder: (_, __) {
              return const Divider();
            },
            itemCount: users.length,
          ),
        ],
      ),
    );
  }
}
