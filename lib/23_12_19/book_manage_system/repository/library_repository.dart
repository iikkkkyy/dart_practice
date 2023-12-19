import 'package:dart_exam/23_12_19/book_manage_system/model/book.dart';
import 'package:dart_exam/23_12_19/book_manage_system/model/library.dart';

import '../model/user.dart';

class LibraryRepository {
  final Library _library;
  final Map<Book, DateTime> borrowedBooks = {};

  LibraryRepository(this._library);

  List<Book> getBooks() => _library.books;

  List<User> getUsers() => _library.users;

  // 책 추가
  void addBook(Book book) => _library.books.add(book);

  // 유저 추가
  void addUser(User user) => _library.users.add(user);

  // 도서 대출
  void borrowBook(User user, Book book) {
    Map<Book, DateTime> borrow = {book: DateTime.now().add(Duration(days: 7))};

    if (book.nowStatus) {
      borrowedBooks.addAll(borrow);
      user.borrowedBooks.addAll(borrow);
      book.nowStatus = false;
    } else {
      print('Sold Out!');
    }
  }

  // 도서 반납
  void returnBook(User user, Book book) {
    borrowedBooks.remove(book);
    user.borrowedBooks.remove(book);
    book.nowStatus = true;
    book.extendStatus = true;
  }

  // 도서 연장
  void extendBook(User user, Book book) {
    borrowedBooks.update(book, (date) => date.add(Duration(days: 7)));
    user.borrowedBooks.update(book, (date) => date.add(Duration(days: 7)));
    book.extendStatus = false;
  }

  // 대출 조회
  List<MapEntry<Book, DateTime>> selectBorrowedBooks() {
    List<MapEntry<Book, DateTime>> sortedBorrowedBooks = borrowedBooks.entries
        .toList()
      ..sort((a, b) => a.value.compareTo(b.value));
    return sortedBorrowedBooks;
  }
}
