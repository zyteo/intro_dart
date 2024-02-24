void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = MenuItem('volcano pizza', 12.99);

  print(noodles.title);
  print(pizza.title);
  print(noodles.format());
  print(pizza.format());

  var creamPuff =
      CreamPuff(['chocolate', 'strawberry'], 'StrawberryChoco CreamPuff', 5.99);

  print(creamPuff.fillings);
  print(creamPuff.format());

  var iceCream = IceCream('Vanilla', 'Vanilla Ice Cream', 3.99);

  print(iceCream.flavour);
  print(iceCream.format());
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> \$$price";
  }
}

class CreamPuff extends MenuItem {
  List<String> fillings;
// super is used to call the constructor of the parent class.
  CreamPuff(this.fillings, String title, double price) : super(title, price);
}

// alternative way to use super.
class IceCream extends MenuItem {
  String flavour;

  IceCream(this.flavour, super.title, super.price);
}
