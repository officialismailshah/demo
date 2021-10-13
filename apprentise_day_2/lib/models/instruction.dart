class Instructions {
  String? imageUrl;
  String? description;
  int? durationInMinutes;

  Instructions({
    required this.imageUrl,
    required this.description,
    required this.durationInMinutes,
  });

  Instructions.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    description = json['description'];
    durationInMinutes = json['durationInMinutes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['description'] = this.description;
    data['durationInMinutes'] = this.durationInMinutes;
    return data;
  }
}