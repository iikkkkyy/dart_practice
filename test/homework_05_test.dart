import 'package:dart_exam/23_12_18/homework_05_post.dart';
import 'package:dart_exam/23_12_18/homework_05_post_manager.dart';
import 'package:dart_exam/23_12_18/homework_05_post_repository.dart';
import 'package:test/test.dart';

// 네트워크 환경에 의존하면 안 된다!!!
void main() {
  test('MockPostMemoryRepositoryImpl Test!!', () async {
    // 메모리에 저장하여 비교
    PostManager postManager =
        PostManager(repository: MockPostMemoryRepositoryImpl());

    Post post1 = Post(id: 1, contents: '안녕하세요');
    Post post2 = Post(id: 2, contents: '반갑습니다');
    Post post3 = Post(id: 1, contents: '안녕못해요');

    postManager.addPost(post1);
    postManager.addPost(post2);
    var result = await postManager.getPosts();

    expect(result[0], post1);
    expect(result[1], post2);

    postManager.deletePost(post2);
    result = await postManager.getPosts();

    expect(result.length, 1);
    expect(result[0], post1);

    postManager.updatePost(post3);
    result = await postManager.getPosts();

    expect(result[0].contents, '안녕못해요');
    expect(result[0].id, 1);
  });
}

class MockPostMemoryRepositoryImpl implements PostRepository {
  List<Post> posts = [];

  @override
  Future<List<Post>> getPosts() async => posts.toList();

  @override
  Future<void> addPost(Post post) async => posts.add(post);

  @override
  Future<void> deletePost(Post post) async => posts.remove(post);

  @override
  Future<void> updatePost(Post post) async => posts.forEach((element) {
        if (element.id == post.id) {
          posts.remove(element);
          posts.add(post);
        }
        ;
      });
}
