import 'dart:io';

import 'package:dart_exam/23_12_19/book_manage_system/model/book.dart';
import 'package:dart_exam/23_12_19/book_manage_system/model/library.dart';
import 'package:dart_exam/23_12_19/book_manage_system/repository/library_repository.dart';
import 'package:dart_exam/23_12_19/book_manage_system/view_model/main_screen.dart';

import 'model/user.dart';

void main() {
  // Initianlizing Library
  Library library = Library();
  LibraryRepository libraryRepository = LibraryRepository(library);

  // 책 추가
  libraryRepository.addBook(Book(id: 1, title: '오준석 생존코딩'));
  libraryRepository.addBook(Book(id: 2, title: 'dart 입문'));
  libraryRepository.addBook(Book(id: 3, title: 'flutter 입문'));
  libraryRepository.addBook(Book(id: 4, title: '개발자 되는법'));

  // 유저 추가
  libraryRepository.addUser(User(userId: '1', userName: 'karl'));
  libraryRepository.addUser(User(userId: '2', userName: 'john'));
  libraryRepository.addUser(User(userId: '3', userName: 'bella'));
  libraryRepository.addUser(User(userId: '4', userName: 'tae'));

  // 정석적으로 하면 다 돌아가지만 예외처리나 방어코딩 할게 수없이 많이남음...
  MainScreen(libraryRepository).mainScreen();

}
