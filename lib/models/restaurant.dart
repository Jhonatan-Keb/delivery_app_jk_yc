import 'package:collection/collection.dart';
import 'package:delivery_app_jk_yc/models/cart_item.dart';
import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Grilled Angus beef with smoky BBQ sauce, crispy bacon and caramelized onions.",
      imagePath: "lib/images/burgers/bbq_bacon_burger.jpg",
      price: 9.00,
      category: FoodCategory.burgers,
      aviableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.99),
        Addon(name: "Fried Egg", price: 1.49),
        Addon(name: "Double Meat", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/classic_cheeseburger.jpg",
      price: 7.50,
      category: FoodCategory.burgers,
      aviableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Sautéed mushrooms and Swiss cheese on a garlic butter toasted brioche bun.",
      imagePath: "lib/images/burgers/mushroom_swiss _burger.jpg",
      price: 9.50,
      category: FoodCategory.burgers,
      aviableAddons: [
        Addon(name: "Caramelized Onions", price: 0.99),
        Addon(name: "Truffle Aioli", price: 1.99),
        Addon(name: "Prosciutto", price: 2.49),
      ],
    ),
    Food(
      name: "Spicy Jalapeño Burger",
      description:
          "Fiery beef patty with pepper jack cheese, fresh jalapeños and chipotle mayo.",
      imagePath: "lib/images/burgers/spacy_jalapeno_burger.jpg",
      price: 8.50,
      category: FoodCategory.burgers,
      aviableAddons: [
        Addon(name: "Extra Jalapeños", price: 0.99),
        Addon(name: "Guacamole", price: 1.99),
        Addon(name: "Crispy Onions", price: 1.49),
      ],
    ),
    Food(
      name: "Veggie Delight Burger",
      description:
          "Grilled vegetable patty with hummus, arugula and tzatziki sauce.",
      imagePath: "lib/images/burgers/veggie_delight_burger.jpg",
      price: 7.00,
      category: FoodCategory.burgers,
      aviableAddons: [
        Addon(name: "Grilled Halloumi", price: 2.99),
        Addon(name: "Sun-Dried Tomatoes", price: 1.49),
        Addon(name: "Pesto Sauce", price: 0.99),
      ],
    ),

    // Desserts
    Food(
      name: "Apple Crumble Pie",
      description:
          "Spiced apples with oat crumble topping and vanilla bean ice cream.",
      imagePath: "lib/images/desserts/apple_crumble_pie.jpg",
      price: 5.00,
      category: FoodCategory.desserts,
      aviableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.75),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Cinnamon Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with molten center, served with vanilla ice cream.",
      imagePath: "lib/images/desserts/chocolate_lava_cake.jpg",
      price: 6.00,
      category: FoodCategory.desserts,
      aviableAddons: [
        Addon(name: "Raspberry Sauce", price: 0.99),
        Addon(name: "Hazelnut Crunch", price: 1.49),
        Addon(name: "Double Ice Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description:
          "Three scoops of vanilla ice cream with chocolate sauce and sprinkles.",
      imagePath: "lib/images/desserts/ice_cream_sundae.jpg",
      price: 4.50,
      category: FoodCategory.desserts,
      aviableAddons: [
        Addon(name: "Extra Toppings", price: 0.99),
        Addon(name: "Nutella Swirl", price: 1.49),
        Addon(name: "Brownie Chunks", price: 1.99),
      ],
    ),
    Food(
      name: "Strawberry Cheesecake",
      description:
          "Creamy New York-style cheesecake with strawberry compote topping.",
      imagePath: "lib/images/desserts/strawberry_cheesecake.jpg",
      price: 5.50,
      category: FoodCategory.desserts,
      aviableAddons: [
        Addon(name: "Fresh Berries", price: 1.99),
        Addon(name: "White Chocolate Shavings", price: 0.99),
        Addon(name: "Lemon Zest", price: 0.75),
      ],
    ),
    Food(
      name: "Tiramisu Delight",
      description:
          "Layers of coffee-soaked ladyfingers and mascarpone cream dusted with cocoa.",
      imagePath: "lib/images/desserts/tiramisu_delight.jpg",
      price: 7.00,
      category: FoodCategory.desserts,
      aviableAddons: [
        Addon(name: "Extra Cocoa Powder", price: 0.75),
        Addon(name: "Kahlúa Drizzle", price: 1.99),
        Addon(name: "Amaretto Cookies", price: 1.49),
      ],
    ),

    // Drinks
    Food(
      name: "Classic Lemonade",
      description:
          "Freshly squeezed lemons with perfect balance of sweetness and tartness.",
      imagePath: "lib/images/drinks/classic _lemonade.jpg",
      price: 2.50,
      category: FoodCategory.drinks,
      aviableAddons: [
        Addon(name: "Mint Leaves", price: 0.50),
        Addon(name: "Strawberry Puree", price: 1.00),
        Addon(name: "Ginger Shot", price: 0.75),
      ],
    ),
    Food(
      name: "Iced Caramel Coffee",
      description: "Cold brew coffee with caramel syrup and creamy milk foam.",
      imagePath: "lib/images/drinks/iced_caramel_coffee.jpg",
      price: 4.00,
      category: FoodCategory.drinks,
      aviableAddons: [
        Addon(name: "Extra Espresso Shot", price: 1.50),
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Cinnamon Sprinkle", price: 0.50),
      ],
    ),
    Food(
      name: "Mango Smoothie",
      description: "Tropical blend of fresh mango, yogurt and orange juice.",
      imagePath: "lib/images/drinks/mango_smoothie.jpg",
      price: 4.50,
      category: FoodCategory.drinks,
      aviableAddons: [
        Addon(name: "Protein Powder", price: 1.99),
        Addon(name: "Chia Seeds", price: 0.99),
        Addon(name: "Coconut Milk", price: 1.49),
      ],
    ),
    Food(
      name: "Mint Mojito",
      description: "Fresh mint, lime and soda water cocktail (non-alcoholic).",
      imagePath: "lib/images/drinks/mint_mojito.jpg",
      price: 5.00,
      category: FoodCategory.drinks,
      aviableAddons: [
        Addon(name: "Extra Lime Wedges", price: 0.50),
        Addon(name: "Simple Syrup", price: 0.75),
        Addon(name: "Soda Refill", price: 1.00),
      ],
    ),
    Food(
      name: "Sparkling Berry Soda",
      description: "Sparkling water with mixed berry syrup and lime wedge.",
      imagePath: "lib/images/drinks/sparkling_berry_soda.jpg",
      price: 3.50,
      category: FoodCategory.drinks,
      aviableAddons: [
        Addon(name: "Extra Berries", price: 1.00),
        Addon(name: "Lemon Slice", price: 0.50),
        Addon(name: "Herbal Infusion", price: 0.99),
      ],
    ),

    // Salads
    Food(
      name: "Asian Sesame Salad",
      description:
          "Crunchy vegetables with edamame and ginger-sesame dressing.",
      imagePath: "lib/images/salads/asian_sesame_salad.jpg",
      price: 7.50,
      category: FoodCategory.salads,
      aviableAddons: [
        Addon(name: "Grilled Tofu", price: 2.99),
        Addon(name: "Sesame Chicken", price: 3.99),
        Addon(name: "Wonton Strips", price: 1.99),
      ],
    ),
    Food(
      name: "Avocado Quinoa Salad",
      description:
          "Superfood mix with quinoa, avocado, kale and lemon-tahini dressing.",
      imagePath: "lib/images/salads/avocado_quinoa_salad.jpg",
      price: 8.50,
      category: FoodCategory.salads,
      aviableAddons: [
        Addon(name: "Grilled Salmon", price: 4.99),
        Addon(name: "Roasted Chickpeas", price: 1.99),
        Addon(name: "Hemp Seeds", price: 2.49),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crispy romaine lettuce with parmesan, croutons and classic Caesar dressing.",
      imagePath: "lib/images/salads/caesar_salad.jpg",
      price: 6.50,
      category: FoodCategory.salads,
      aviableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Anchovies", price: 2.99),
        Addon(name: "Parmesan Crisps", price: 1.99),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description: "Fresh mozzarella, tomatoes and basil with balsamic glaze.",
      imagePath: "lib/images/salads/caprese_salad.jpg",
      price: 6.00,
      category: FoodCategory.salads,
      aviableAddons: [
        Addon(name: "Prosciutto", price: 3.49),
        Addon(name: "Peach Slices", price: 1.99),
        Addon(name: "Pine Nuts", price: 2.49),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, olives, feta cheese and red onion with oregano.",
      imagePath: "lib/images/salads/greek_salad.jpeg",
      price: 7.00,
      category: FoodCategory.salads,
      aviableAddons: [
        Addon(name: "Grilled Shrimp", price: 4.99),
        Addon(name: "Kalamata Olives", price: 1.49),
        Addon(name: "Tzatziki Sauce", price: 0.99),
      ],
    ),

    // Sides
    Food(
      name: "Crispy Mozzarella Sticks",
      description: "Golden fried mozzarella with marinara dipping sauce.",
      imagePath: "lib/images/sides/crispy_mozzarella_sticks.jpg",
      price: 5.50,
      category: FoodCategory.sides,
      aviableAddons: [
        Addon(name: "Extra Marinara", price: 0.99),
        Addon(name: "Ranch Dressing", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),
    Food(
      name: "Garlic Breadsticks",
      description:
          "Oven-baked breadsticks with garlic butter and marinara sauce.",
      imagePath: "lib/images/sides/garlic_breadsticks.jpg",
      price: 3.50,
      category: FoodCategory.sides,
      aviableAddons: [
        Addon(name: "Cheese Dip", price: 1.49),
        Addon(name: "Garlic Aioli", price: 0.99),
        Addon(name: "Parmesan Sprinkle", price: 0.75),
      ],
    ),
    Food(
      name: "Loaded Cheese Fries",
      description:
          "Crispy fries topped with melted cheese, bacon bits and green onions.",
      imagePath: "lib/images/sides/loaded_cheese_fries.jpg",
      price: 5.00,
      category: FoodCategory.sides,
      aviableAddons: [
        Addon(name: "Chili", price: 2.99),
        Addon(name: "Jalapeños", price: 0.99),
        Addon(name: "Sour Cream", price: 0.99),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Golden beer-battered onion rings with spicy dipping sauce.",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 4.00,
      category: FoodCategory.sides,
      aviableAddons: [
        Addon(name: "BBQ Sauce", price: 0.99),
        Addon(name: "Blue Cheese Dip", price: 1.49),
        Addon(name: "Truffle Salt", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Wedges",
      description: "Oven-roasted wedges with chipotle aioli dipping sauce.",
      imagePath: "lib/images/sides/sweet_potato_wedges.jpg",
      price: 4.50,
      category: FoodCategory.sides,
      aviableAddons: [
        Addon(name: "Maple Glaze", price: 0.99),
        Addon(name: "Cajun Seasoning", price: 0.75),
        Addon(name: "Avocado Ranch", price: 1.49),
      ],
    ),
  ];

  /*

  G E T T E R S

  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quanty
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
