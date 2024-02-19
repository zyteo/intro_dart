// void means this function doesn't return anything. String means function returns string
// if not specified, then dynamic
void main() {
  final greeting1 = greet(10, true);
  print(greeting1);

  final greeting2 = greet2("mario",25);
  print(greeting2);

}

String greet(name, age){
  return "Hi, I am $name and I am $age.";

}

// above case doesn't specify parameter type

String greet2(String name, int age){
  return "Hi, I am $name and I am $age.";
}

// positional arguments vs named arguments

String greet3({String? name, required int age}){
  return "Hi, I am $name and I am $age.";
}