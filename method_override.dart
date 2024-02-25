void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(['peppers', 'mushroom'], 'volcano pizza', 12.99);

  print(noodles);
  print(pizza);

  print(noodles.format());
  print(pizza.format());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> \$$price";
  }

  //override toString method which is used to print the object.
  //by default, print(item) will give Instance of 'MenuItem'
  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;
// super is used to call the constructor of the parent class.
  Pizza(this.toppings, super.title, super.price);

  //override is used to override the method of the parent class.
  @override
  String format() {
    var formattedToppings = 'Contains:';

    for (final topping in toppings) {
      formattedToppings = '$formattedToppings $topping';
    }

    return '$title --> \$$price \n$formattedToppings';
  }

  @override
  String toString() {
    return 'Instance of Pizza: $title, \$$price, $toppings';
  }
}
