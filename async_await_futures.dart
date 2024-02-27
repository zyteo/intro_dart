void main() {
  // non async-await
  fetchPost().then((post) {
    print(post.title);
    print(post.userId);
  });
}

Future fetchPost() {
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
