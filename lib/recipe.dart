
class Food {
   String title;
   String ingredient;
   String description;
   String id;

  Food(this.title, this.ingredient, this.description, this.id,);

  Food.fromMap(Map< String,dynamic > data, String id):
  title = data ["title"],
  ingredient = data ["ingredient"],
  description = data ["description"],
  id = id;

}