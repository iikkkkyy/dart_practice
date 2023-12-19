class Book {
  int id;
  String title;
  bool nowStatus = true;

  Book({
    required this.id,
    required this.title,
  });

  @override
  String toString() {
    return 'Book{id: $id, title: $title, nowStatus: $nowStatus}\n';
  }
}
