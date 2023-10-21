// import 'dart:math';

// import 'package:flutter/material.dart';

// import '../models/nodemodel.dart';

// class ArrowPainter extends CustomPainter {
//   final List<NodeModel> nodes;

//   ArrowPainter(this.nodes);

//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2.0;

//     for (final node in nodes) {
//       final startX = node.childXPosition ?? 0.0;
//       final startY = node.childYPosition ?? 0.0;

//       if (node.parent != null) {
//         final parent = nodes.firstWhere((n) => n.id == node.parent);
//         final endX = parent.childXPosition ?? 0.0;
//         final endY = parent.childYPosition ?? 0.0;

//         // Draw a line connecting the nodes
//         canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);

//         // Calculate the arrowhead points
//         final dx = endX - startX;
//         final dy = endY - startY;
//         final angle = atan2(dy, dx);

//         final arrowSize = 10.0;
//         final arrowX = 50 + endX - arrowSize * cos(angle);
//         final arrowY = 50 + endY - arrowSize * sin(angle);

//         // Draw the arrowhead
//         canvas.drawLine(Offset(endX, endY), Offset(arrowX, arrowY), paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
