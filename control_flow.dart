void main() {
  for (int i = 0; i < 5; i++) {
    print("The current i is $i");
  }

  List<int> scores = [25, 50, 75, 100, 40, 60];

  for (int score in scores) {
    print("The score is $score");
  }

  for (int score in scores) {
    if (score > 50) {
      print("The score is $score");
    } else {
      print("Score ($score) is not high enough.");
    }
  }

  //using where, similar to filter for JS
  for (int score in scores.where((s) => s > 50)) {
    print("s > 50: The score is $score");
  }

  for (int score in scores.where((s) => s == 100)) {
    print("s == 100: The score is $score");
  }
  
  for (int score in scores.where((s) => s < 50)) {
    print("s < 50: The score is $score");
  }
}
