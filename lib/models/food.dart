// food item
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> aviableAddons;

  Food({
    required this.name,          // clasic cheese burger
    required this.description,   // a burger full of cheese
    required this.imagePath,     // lib/images/cheese_burger.png
    required this.price,         // 7.50
    required this.category,      // burger
    required this.aviableAddons, // [extra cheese, sauce, extra patty]
  });
}

// food categories
enum FoodCategory { burgers, salads, sides, desserts, drinks }

// food addons
class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
