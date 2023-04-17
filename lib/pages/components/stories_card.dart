import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {
  const StoriesCard({
    Key? key,
    required this.userName,
    required this.image,
  }) : super(key: key);

  final String userName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.1,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(image),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              userName,
              maxLines: 1,
              style: const TextStyle(
                //color: Colors.black87,
                fontSize: 18,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
