import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallsCards extends StatelessWidget {
  const CallsCards({
    Key? key,
    required this.userName,
    required this.image,
    required this.time,
  }) : super(key: key);

  final String userName;
  final String image;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(width: 10),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userName),
              Row(
                children: [
                  Icon(
                    Icons.phone_callback_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 3),
                  const Text(
                    'Outgoing',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    '.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    DateFormat('MM/dd  h:mm aa').format(time),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 14,
          backgroundColor: Colors.grey[600],
          child: const Icon(
            Icons.phone,
            size: 18,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
