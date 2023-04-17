import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    Key? key,
    required this.userName,
    required this.image,
  }) : super(key: key);

  final String userName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(image),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 9,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          // const Spacer(),
          Text(
            userName,
            maxLines: 1,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
