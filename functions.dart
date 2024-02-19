// void means this function doesn't return anything. String means function returns string
// if not specified, then dynamic
void main() {
  final greeting1 = greet(10, true);
  print(greeting1);

  final greeting2 = greet2("mario", 25);
  print(greeting2);

  final greeting3 = greet3(age: 30);
  print(greeting3);

  final greeting4 = greet4(name: "luigi", age: 35);
  print(greeting4);
}

String greet(name, age) {
  return "Hi, I am $name and I am $age.";
}

// above case doesn't specify parameter type

String greet2(String name, int age) {
  return "Hi, I am $name and I am $age.";
}

// positional arguments vs named arguments
// ? is for non required arguments. if doesn't exist, null will be used
// put required in front if argument is needed

String greet3({String? name, required int age}) {
  return "Hi, I am $name and I am $age.";
}

// flutter widgets normally use named arguments
// because some arguments are optional
String greet4({required String name, required int age}) {
  return "Hi, I am $name and I am $age.";
}
