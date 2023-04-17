import 'package:flutter/material.dart';

class PeapleCard extends StatelessWidget {
  const PeapleCard({
    Key? key,
    required this.userName,
    required this.image,
  }) : super(key: key);

  final String userName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: CircleAvatar(
              radius: 18,
           backgroundImage: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(width: 10),
         Text(userName),
      ],
    );
  }
}
