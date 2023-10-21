import 'package:familytree/widget/node.dart';
import 'package:flutter/material.dart';

import '../data/dummydata.dart';
import '../widget/arrow.dart';

class TreeScreen extends StatefulWidget {
  const TreeScreen({super.key});

  @override
  State<TreeScreen> createState() {
    return _TreeScreenState();
  }
}

late double screenwidth;

class _TreeScreenState extends State<TreeScreen> {
  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Center(
          child: Text(
            "Harry's Family Tree",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 600, // Adjusted to 600
              child: CustomPaint(
                size: const Size(
                    300, 600), // Adjusted to 300 width and 600 height
                // painter: ArrowPainter(familyTreeData),
                child: Stack(
                  children: [
                    for (final node in familyTreeData)
                      Node(
                        name: node.name,
                        male: node.male,
                        alive: node.alive,
                        id: node.id,
                        totalSiblings: node.totalSiblings,
                        numberSiblings: node.siblingNumber,
                      ),
                  ],
                ),
              ),
            ),
            // Other widgets can be added below the family tree
          ],
        ),
      ),
    );
  }
}
