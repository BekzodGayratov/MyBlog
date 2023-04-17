class PostModel {
  Details? details;
  String? sId;
  String? name;
  String? title;
  String? body;
  String? date;
  String? img;
  int? iV;

  PostModel(
      {this.details,
      this.sId,
      this.name,
      this.title,
      this.body,
      this.date,
      this.img,
      this.iV});

  PostModel.fromJson(Map<String, dynamic> json) {
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
    sId = json['_id'];
    name = json['name'];
    title = json['title'];
    body = json['body'];
    date = json['date'];
    img = json['img'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['title'] = this.title;
    data['body'] = this.body;
    data['date'] = this.date;
    data['img'] = this.img;
    data['__v'] = this.iV;
    return data;
  }
}

class Details {
  int? likes;
  int? views;

  Details({this.likes, this.views});

  Details.fromJson(Map<String, dynamic> json) {
    likes = json['likes'];
    views = json['views'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['likes'] = this.likes;
    data['views'] = this.views;
    return data;
  }
}
