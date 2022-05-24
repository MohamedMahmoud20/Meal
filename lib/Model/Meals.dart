enum Affordability {
  Affordable,
  Pricey,
  Luxurious
}
enum Complexity {
  Simple,
  Hard,
  Challenging
}


class Meal {
  String id;
  List categories;
  String title;
  String imageUrl;
  int duration;
  List ingredients;
  List steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;
 Meal({required this.title, required this.id, required this.duration, required this.categories,
    required this.imageUrl, required this.ingredients, required this.isGlutenFree, required this.isLactoseFree,
    required this.isVegan, required this.isVegetarian, required this.steps, complexity, affordability});
}