class FriendFeedt {
  List<Feed>? feed;

  FriendFeedt({required this.feed});

  FriendFeedt.fromJson(Map<String, dynamic> json) {
    if (json['feed'] != null) {
      feed = <Feed>[];
      json['feed'].forEach((v) {
        feed!.add( Feed.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.feed != null) {
  //     data['feed'] = this.feed!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Feed {
  String? id;
  String? profileImageUrl;
  String? comment;
  String? foodPictureUrl;
  String? timestamp;

  Feed(
      {required this.id,
      required this.profileImageUrl,
      required this.comment,
      required this.foodPictureUrl,
      required this.timestamp});

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
      id: json['id'],
      profileImageUrl: json['profileImageUrl'],
      comment: json['comment'],
      foodPictureUrl: json['foodPictureUrl'],
      timestamp: json['timestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['profileImageUrl'] = this.profileImageUrl;
    data['comment'] = this.comment;
    data['foodPictureUrl'] = this.foodPictureUrl;
    data['timestamp'] = this.timestamp;
    return data;
  }
}
