

class StepModel {
  final int stepOrder;
  final String instruction;

  StepModel({required this.stepOrder, required this.instruction});

  @override
  String toString() {
    return '    $stepOrder. $instruction';
  }
}

class Ingredient {
  final String name;
  final int quantity;
  final String unitOfMeasure;

  Ingredient({required this.name, required this.quantity, required this.unitOfMeasure});

  @override
  String toString() {
    return '    - $name ($quantity $unitOfMeasure)';
  }
}

class Recipe {
  final String title;
  final List<Ingredient> ingredients;
  final List<StepModel> steps;

  Recipe({required this.title, required this.ingredients, required this.steps});

  @override
  String toString() {
    return '$name';
  }
}

class DailyMenu {
  final String dayOfWeek;
  final Recipe recipe;

  DailyMenu({required this.dayOfWeek, required this.recipe});
}

StepModel StepModelBuilder({required int stepOrder, required String instruction}) {
  return StepModel(
    stepOrder: stepOrder, 
    instruction: instruction
    );
}

Ingredient IngredientBuilder({required String name, required int quantity, required String unitOfMeasure}) {
  return Ingredient(
    name: name, 
    quantity: quantity, 
    unitOfMeasure: unitOfMeasure
    );
}

Recipe RecipeBuilder({required String title, required List<Ingredient> ingredients, required List<StepModel> steps}) {
  return Recipe(
    title: title, 
    ingredients: ingredients, 
    steps: steps
    );
}

DailyMenu DailyMenuBuilder({required String dayOfWeek, required Recipe recipe}) {
  return DailyMenu(
    dayOfWeek: dayOfWeek, 
    recipe: recipe
    );
}