import 'package:dart_exam/23_12_19/book_manage_system/model/book.dart';
import 'package:dart_exam/23_12_19/book_manage_system/model/library.dart';

import '../model/user.dart';

class LibraryRepository {
  final Library _library;

  LibraryRepository(this._library);

  List<Book> getBooks() => _library.books;

  List<User> getUsers() => _library.users;

  // 책 추가
  void addBook(Book book) => _library.books.add(book);

  // 유저 추가
  void addUser(User user) => _library.users.add(user);

  // 도서 대출
  void borrowBook(User user, Book book) {
    if (book.nowStatus) {
      user.borrowedBooks.addAll({book, DateTime.now()} as Map<Book, DateTime>);
      book.nowStatus = false;
    } else {
      print('Sold Out!');
    }
  }

  // 도서 반납
  void returnBook(User user, Book book) {
    user.borrowedBooks.remove(book);
    book.nowStatus = true;
  }

  // 도서 연장
  void extendBook(User user, Book book) {
    user.borrowedBooks.update(book, (date) => date.add(Duration(days: 7)));
  }
}
