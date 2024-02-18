class Home {
  final int id;
  final String name;
  final String price;
  Home(this.id, this.price, this.name);
}

void main() {
  final Home home1 = Home(1, "25000", "Sakelou");
  final Home home2 = Home(2, "20000", "Lenis");
  final Home home3 = Home(3, "30000", "Teronk");
  List<Home> houses = [home1, home2, home3];
  houses.sort((a, b) => a.price.compareTo(b.price));
  final List<dynamic> homes =
      houses.map((Home home) => home.name + " " + home.price).toList();
  print(homes);
}
