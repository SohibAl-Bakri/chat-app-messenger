import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.userName,
    required this.subTitle,
    required this.image,
    required this.time,
  }) : super(key: key);

  final String userName;
  final String subTitle;
  final String image;
  final DateTime time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(
          children: [
            CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage(image),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      // Expanded(child: Text('Sub Title')),
                      Text(
                        subTitle,
                        maxLines: 1,
                        style: const TextStyle(overflow: TextOverflow.ellipsis),
                      ),
                      const SizedBox(width: 5),
                      Text(DateFormat('MM/dd  h:mm aa').format(time)),
                      const SizedBox(width: 3),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Icon(Icons.check_circle_outline_rounded)
          ],
        ),
      ),
    );
  }
}
