import 'book.dart';

class User {
  int userId;
  String userName;
  Map<Book,DateTime> borrowedBooks = {};

  User({
    required this.userId,
    required this.userName,
  });
}