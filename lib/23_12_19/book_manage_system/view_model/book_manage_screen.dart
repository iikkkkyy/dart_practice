import 'dart:io';
import 'package:collection/collection.dart';
import 'package:dart_exam/23_12_19/book_manage_system/model/book.dart';
import 'package:dart_exam/23_12_19/book_manage_system/model/user.dart';
import 'package:dart_exam/23_12_19/book_manage_system/repository/library_repository.dart';
import 'package:dart_exam/23_12_19/book_manage_system/view_model/main_screen.dart';

class BookManagementViewModel {
  final LibraryRepository _libraryRepository;

  BookManagementViewModel(this._libraryRepository);

  void bookManagement() {
    print('0.뒤로 1.도서조회 2.도서등록 3.도서대출 4.도서반납 5.도서연장 6.대출목록');
    String? num = stdin.readLineSync();
    switch (num) {
      case '0':
        MainScreen(_libraryRepository).mainScreen();
        break;
      case '1':
        print(_libraryRepository.getBooks().toString());
        return bookManagement();
      case '2':
        addBook();
        break;
      case '3':
        borrowBook();
        break;
      case '4':
        returnBook();
        break;
      case '5':
        extendBook();
        break;
      case '6':
        print(_libraryRepository.selectBorrowedBooks());
        return bookManagement();
      default:
        print('잘못된 입력값입니다');
        return bookManagement();
    }
  }

  void addBook() {
    print('책 추가 : (id,title) 형식으로 입력하시오.');
    print('ex) 1, 오준석의생존코딩');
    String? num = stdin.readLineSync();
    List<String>? numList = num?.split(',');
    if (numList?.length != 2) {
      print('잘못된 형식입니다.');
      return addBook();
    } else {
      print('책 추가 완료 : id : ${numList?[0]} title : ${numList?[1]}');
      _libraryRepository
          .addBook(Book(id: int.parse(numList![0]), title: numList[1]));
      return bookManagement();
    }
  }

  void borrowBook() {
    print('도서대출 : (userId,bookId) 형식으로 입력하시오.');
    print('ex) 1, 1');
    String? num = stdin.readLineSync();
    List<String>? numList = num?.split(',');

    if (numList?.length != 2) {
      print('잘못된 형식입니다.');
      return borrowBook();
    }

    if (!_libraryRepository
        .getUsers()
        .map((e) => e.userId)
        .contains(numList![0])) {
      print('해당 ${numList[0]}의 유저 정보가 없습니다');
      print(_libraryRepository.getUsers().toString());
      return borrowBook();
    }
    if (!_libraryRepository
        .getBooks()
        .map((e) => e.id)
        .contains(int.parse(numList[1]))) {
      print('해당 ${int.parse(numList[1])}의 도서 정보가 없습니다');
      print(_libraryRepository.getBooks().toString());
      return borrowBook();
    }

    final User user = _libraryRepository
        .getUsers()
        .firstWhere((element) => element.userId == numList[0]);

    final Book book = _libraryRepository
        .getBooks()
        .firstWhere((element) => element.id == int.parse(numList[1]));

    // print('${user.toString()} ');
    if (book.nowStatus) {
      print('유저 ${user.userName}이/ 책 ${book.title}을 빌렸습니다.');
    }
    _libraryRepository.borrowBook(user, book);
    bookManagement();
  }

  void returnBook() {
    print('도서반납 : (userId,bookId) 형식으로 입력하시오.');
    print('ex) 1, 1');
    String? num = stdin.readLineSync();
    List<String>? numList = num?.split(',');

    if (numList?.length != 2) {
      print('잘못된 형식입니다.');
      return returnBook();
    }

    if (!_libraryRepository
        .getUsers()
        .map((e) => e.userId)
        .contains(numList![0])) {
      print('해당 ${numList[0]}의 유저 정보가 없습니다');
      print(_libraryRepository.getUsers().toString());
      return returnBook();
    }
    if (!_libraryRepository
        .getBooks()
        .map((e) => e.id)
        .contains(int.parse(numList[1]))) {
      print('해당 ${int.parse(numList[1])}의 도서 정보가 없습니다');
      print(_libraryRepository.getBooks().toString());
      return returnBook();
    }

    final User user = _libraryRepository
        .getUsers()
        .firstWhere((element) => element.userId == numList[0]);

    final Book book = _libraryRepository
        .getBooks()
        .firstWhere((element) => element.id == int.parse(numList[1]));

    // print('${user.toString()} ');
    if (user.borrowedBooks.containsKey(book)) {
      _libraryRepository.returnBook(user, book);
    } else {
      print('해당 책을 빌린 이력이 없습니다');
      return returnBook();
    }
    print('유저 ${user.userName}이/가 책 ${book.title}을 반납했습니다.');
    bookManagement();
  }

  void extendBook() {
    print(_libraryRepository.getUsers().toString());
    print('사용자 id를 입력하시오 : ');
    String? num = stdin.readLineSync();
    final User user = _libraryRepository
        .getUsers()
        .firstWhere((element) => element.userId == num);

    print(user.borrowedBooks);
    print('연장할 책 id를 입력하시오');
    String? num2 = stdin.readLineSync();
    final Book book = _libraryRepository
        .getBooks()
        .firstWhere((element) => element.id == int.parse(num2!));
    if(book.extendStatus) {
      _libraryRepository.extendBook(user, book);
      print('사용자 ${user.userName}의 책${book.title}이 7일 연장되었습니다.');
      return bookManagement();
    }else{
      print('이미 연장이 된 책입니다. 추가 연장은 불가합니다.');
      return bookManagement();
    }


  }
}
