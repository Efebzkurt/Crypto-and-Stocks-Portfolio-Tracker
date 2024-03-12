class Data {
  int? id;
  int? albumId;
  String? title;
  String? url;
  String? thumbnailUrl;

  Data({this.title, this.id, this.url, this.albumId, this.thumbnailUrl});

  //Convert json to dart
  Data.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
  }
}
