void main() {
  //Lists
  var sampleList = [1, 2, 3, 4, 5, "mario"];
  // if you want to define specific type of list, use List<type>
  List<int> scores = [1, 2, 3, 4, 5];
  print(sampleList);
  print(scores);

  scores[0] = 10;
  print(scores);

  scores.add(20);
  // for remove, it will remove the first instance of the value
  scores.remove(10);
  scores.removeLast();
  scores.shuffle();

  print(scores);
  print(scores.indexOf(20));
  print(scores.indexOf(3));

  //Sets
  Set<String> names = {"mario", "luigi", "yoshi"};
  names.add("toad");
  names.add("bowser");
  names.add("mario");

  print(names);
  names.remove("luigi");
  print(names.length);
}
