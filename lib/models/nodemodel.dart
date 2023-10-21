class NodeModel {
  const NodeModel({
    required this.id,
    required this.name,
    this.parent,
    required this.male,
    required this.alive,
    this.siblingNumber,
    this.totalSiblings,
  });

  final String id;
  final String name;
  final String? parent;
  final bool male;
  final bool alive;
  final int? siblingNumber;
  final int? totalSiblings;
}
