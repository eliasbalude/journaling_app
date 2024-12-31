class Journal {
  final String id;
  final String title;
  final String content;
  final DateTime dateCreated;

  Journal({
    required this.id,
    required this.title,
    required this.content,
    required this.dateCreated,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'dateCreated': dateCreated.toIso8601String(),
    };
  }

  static Journal fromMap(Map<String, dynamic> map) {
    return Journal(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      dateCreated: DateTime.parse(map['dateCreated']),
    );
  }
}
