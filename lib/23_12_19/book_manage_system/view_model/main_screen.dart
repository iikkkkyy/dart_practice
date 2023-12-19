import 'dart:io';
import 'package:dart_exam/23_12_19/book_manage_system/model/library.dart';
import 'package:dart_exam/23_12_19/book_manage_system/repository/library_repository.dart';
import 'package:dart_exam/23_12_19/book_manage_system/view_model/book_manage_screen.dart';
import 'package:dart_exam/23_12_19/book_manage_system/view_model/user_manage_screen.dart';

class MainScreen{
  final LibraryRepository _libraryRepository;

  MainScreen(this._libraryRepository);

  void mainScreen(){
    print('1.회원관리 2.도서관리 3.종료');
    String? num = stdin.readLineSync();
    switch (num) {
      case '1':
        UserManagementViewModel(_libraryRepository).userManagement();
        break;
      case '2':
        BookManagementViewModel(_libraryRepository).bookManagement();
        break;
      default:
        print('시스템 off');
        break;
    }
  }
}