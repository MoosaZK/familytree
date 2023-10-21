import 'package:familytree/screen/treescreen.dart';
import 'package:flutter/material.dart';

class Node extends StatelessWidget {
  final String name;
  final bool male;
  final bool alive;
  final String id;
  final int? totalSiblings;
  final int? numberSiblings;
  const Node(
      {Key? key,
      required this.name,
      required this.male,
      required this.alive,
      required this.id,
      this.totalSiblings,
      this.numberSiblings})
      : super(key: key);
  final double mainYPosition = 300;

  @override
  Widget build(BuildContext context) {
    double nodeSpacing = screenwidth / (totalSiblings ?? 1);
    double horizontalPosition =
        (numberSiblings ?? 0) * nodeSpacing - nodeSpacing / 2;
    return Positioned(
      left: nodeSpacing,
      top: (id == "1") ? mainYPosition : mainYPosition * 1.5,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(
                  255, 225, 225, 225), // You can change the background color
            ),
            child: const Center(
              child: Icon(
                Icons.add, // Display the provided icon
                size: 50, // Set the icon size
                color: Colors.black, // Set the icon color
              ),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [Text(name), Icon(male ? Icons.male : Icons.female)],
          ),
          Text('ID # $id'),
          Text(alive ? "Alive" : "Dead")
        ],
      ),
    );
  }
}
