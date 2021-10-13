class Ingredients {
  String? imageUrl;
  String? title;
  String? source;

  Ingredients({
    required this.imageUrl,
    required this.title,
    required this.source,
  });

  Ingredients.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['title'] = this.title;
    data['source'] = this.source;
    return data;
  }
}