void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(['peppers', 'mushroom'], 'volcano pizza', 12.99);
  var kebab = MenuItem('chicken kebab', 8.99);
  var burger = MenuItem('veg burger', 7.99);

  var foodItems =
      Collection<MenuItem>('Menu Items', [noodles, pizza, kebab, burger]);

  var random = foodItems.randomItem();
  print(random);

  print(noodles);
  print(pizza);
  print(kebab);
  print(burger);
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

// T is a generic type, which means it can be any type.
class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
