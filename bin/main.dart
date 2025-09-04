import 'dart:io';
import 'dart:convert';
import 'package:recipes/menu_models.dart';

Future<void> main() async {
  final file = File('menu_data.json');
  if (!await file.exists()) {
    stderr.writeln('menu_data.json not found in current directory');
    return;
  }

  final jsonString = await file.readAsString();
  List<dynamic> dailyMenusRaw =jsonDecode(jsonString);


// BELOW: Use the models and builders to created our Menu object model composition 
//*************************************************
// ADD YOUR CODE HERE to build the list of Menu objects  

//List<Menu> menus = [];



// DO NOT MODIFY CODE BELOW THIS LINE
// UNCOMMENT THE CODE BELOW WHEN YOU ARE READY TO TEST
// ***********************************************


  // for (final menu in menus) {
  //   print('${menu.dayOfWeek}: ${menu.recipe.title}');
  //   if (menu.recipe.ingredients.isNotEmpty) {
  //     print('  Ingredients:');
  //     for (final ing in menu.recipe.ingredients) {
  //       print('    - ${ing.toString()}');
  //     }
  //   }
  //   if (menu.recipe.steps.isNotEmpty) {
  //     print('  Steps:');
  //     for (final step in menu.recipe.steps) {
  //       print('    ${step.toString()}');
  //     }
  //   }
  // }
}
