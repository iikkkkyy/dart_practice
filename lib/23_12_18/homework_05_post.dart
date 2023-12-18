// Model
class Post {
  int id;
  String contents;

  Post({
    required this.id,
    required this.contents,
  });

  @override
  String toString() {
    return 'Post(id: $id, contents: $contents)';
  }
}