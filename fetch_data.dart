import 'package:http/http.dart' as http;

void main() async {
  // non async-await
  // fetchPost().then((post) {
  //   print(post.title);
  //   print(post.userId);
  // });

  // if there is await here, then the main function needs to have async
  final post = await fetchPost();
  print(post.title);
  print(post.userId);
}

Future<Post> fetchPost() {
  const delay = Duration(seconds: 1);

  return Future.delayed(delay, () {
    return Post('my post', 234);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
