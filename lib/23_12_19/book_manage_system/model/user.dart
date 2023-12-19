import 'book.dart';

class User {
  String userId;
  String userName;
  Map<Book,DateTime> borrowedBooks = {};

  User({
    required this.userId,
    required this.userName,
  });

  @override
  String toString() {
    return 'User{userId: $userId, userName: $userName}';
  }
}