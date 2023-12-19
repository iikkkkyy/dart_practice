import 'dart:io';
import 'package:dart_exam/23_12_19/book_manage_system/model/user.dart';
import 'package:dart_exam/23_12_19/book_manage_system/repository/library_repository.dart';
import 'package:dart_exam/23_12_19/book_manage_system/view_model/main_screen.dart';

class UserManagementViewModel {
  final LibraryRepository _libraryRepository;

  UserManagementViewModel(this._libraryRepository);

  void userManagement() {
    print('0.뒤로 1.회원조회 2.회원등록 3.회원수정 4.회원삭제');
    String? num = stdin.readLineSync();
    switch (num) {
      case '0':
        MainScreen(_libraryRepository).mainScreen();
        break;
      case '1':
        print(_libraryRepository.getUsers().toString());
        return userManagement();
      case '2':
        addUser();
        break;
      case '3':
        print('권한이 없습니다');
        return userManagement();
      case '4':
        print('권한이 없습니다');
        return userManagement();
      default:
        print('잘못된 입력값입니다');
        return userManagement();
    }
  }

  void addUser() {
    print('사용자 추가 : (userId,userName) 형식으로 입력하시오.');
    print('ex) 1234, 김강태');
    String? num = stdin.readLineSync();
    List<String>? numList = num?.split(',');
    if (numList?.length != 2) {
      print('잘못된 형식입니다.');
      return addUser();
    } else {
      print('유저 추가 완료 : id : ${numList?[0]} name : ${numList?[1]}');
      _libraryRepository
          .addUser(User(userId: numList![0], userName: numList[1]));
      return userManagement();
    }
  }


}
