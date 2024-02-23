void main() {
  var sample = {
    "name": "John",
    "age": 30,
  };
  // above is dynamic map
  print(sample);

  Map<String, String> planets = {
    "first": "Mercury",
    "second": "Venus",
    "third": "Earth",
    "fourth": "Mars",
    "fifth": "Jupiter",
  };

  print(planets);

  // Accessing map values
  print(planets["first"]);

  // Adding new key-value pair
  planets["sixth"] = "Saturn";

  print(planets);

  print(planets.containsKey("third"));
  print(planets.containsKey("abc"));
  print(planets.containsValue("Earth"));
  print(planets.containsValue("def"));

  print(planets.remove("Earth"));
  print(planets.remove("third"));

  print(planets.keys);
  print(planets.values);

  planets.forEach((key, value) {
    print("$key: $value");
    print("$value");
  });
}
