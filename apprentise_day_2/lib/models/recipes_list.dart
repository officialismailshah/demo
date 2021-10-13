class RecipesLists {
  List<Recipes>? recipes;

  RecipesLists({required this.recipes});

  RecipesLists.fromJson(Map<String, dynamic> json) {
    if (json['recipes'] != null) {
      recipes = <Recipes>[];
      json['recipes'].forEach((v) {
        recipes!.add(new Recipes.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.recipes != null) {
  //     data['recipes'] = this.recipes!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Recipes {
  String? id;
  String? dishImage;
  String? title;
  String? duration;
  String? source;
  List<String>? information;

  Recipes(
      {required this.id,
      required this.dishImage,
      required this.title,
      required this.duration,
      required this.source,
      required this.information});

  Recipes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dishImage = json['dishImage'];
    title = json['title'];
    duration = json['duration'];
    source = json['source'];
    information = json['information'].cast<String>();
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['dishImage'] = this.dishImage;
  //   data['title'] = this.title;
  //   data['duration'] = this.duration;
  //   data['source'] = this.source;
  //   data['information'] = this.information;
  //   return data;
  // }
}
