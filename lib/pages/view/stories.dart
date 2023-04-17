import 'package:flutter/material.dart';
import 'package:messenger/pages/components/stories_card.dart';
import 'package:messenger/pages/model/user_info.dart';

class StoriesPage extends StatelessWidget {
  StoriesPage({super.key});

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            UserInfo userInfo = users[index];
    
            return StoriesCard(
              userName: userInfo.userName!,
              image: userInfo.image!,
            );
          }),
    );
    // return ListView.builder(
    //   itemCount: users.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     UserInfo userInfo = users[index];
    //     return StoriesCard(
    //       userName: userInfo.userName!,
    //       image: userInfo.image!,
    //     );
    //   },
    // );
  }
}
