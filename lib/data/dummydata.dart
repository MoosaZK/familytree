import 'package:familytree/models/nodemodel.dart';

List<NodeModel> familyTreeData = [
  NodeModel(
    id: '1',
    name: 'Harry',
    male: true,
    alive: true,
  ),
  NodeModel(
    id: '2',
    name: 'Lily',
    parent: '1',
    male: false,
    alive: true,
    siblingNumber: 1, // Lily is the first child of Harry
    totalSiblings: 3, // Harry has three children
  ),
  NodeModel(
    id: '3',
    name: 'James',
    parent: '2',
    male: true,
    alive: true,
    siblingNumber: 1, // James is the first child of Lily
    totalSiblings: 3, // Lily has three children
  ),
  NodeModel(
    id: '4',
    name: 'George',
    parent: '1',
    male: true,
    alive: true,
    siblingNumber: 2, // George is the second child of Harry
    totalSiblings: 3, // Harry has three children
  ),
  NodeModel(
    id: '5',
    name: 'Ginny',
    parent: '1',
    male: false,
    alive: true,
    siblingNumber: 3, // Ginny is the third child of Harry
    totalSiblings: 3, // Harry has three children
  ),
  NodeModel(
    id: '6',
    name: 'Albus',
    parent: '2',
    male: true,
    alive: true,
    siblingNumber: 2, // Albus is the second child of Lily
    totalSiblings: 3, // Lily has three children
  ),
  NodeModel(
    id: '7',
    name: 'Luna',
    parent: '2',
    male: false,
    alive: true,
    siblingNumber: 3, // Luna is the third child of Lily
    totalSiblings: 3, // Lily has three children
  ),
  NodeModel(
    id: '8',
    name: 'Fred',
    parent: '4',
    male: true,
    alive: false,
    siblingNumber: 1, // Fred is the first child of George
    totalSiblings: 1, // George has only one child
  ),
  NodeModel(
    id: '9',
    name: 'Dobby',
    parent: '5',
    male: true,
    alive: false,
    siblingNumber: 1, // Dobby is the first child of Ginny
    totalSiblings: 1, // Ginny has only one child
  ),
  // Add more nodes and relationships here
];
