import 'book.dart';

class User {
  int userId;
  String userName;
  List<Book> borrowedBooks = [];

  User({
    required this.userId,
    required this.userName,
  });
}