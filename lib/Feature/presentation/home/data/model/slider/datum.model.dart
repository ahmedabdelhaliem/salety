class Datum {
  int? id;
  int? ord;
  String? type;
  dynamic name;
  String? img;
  dynamic urlL;
  int? withId;

  Datum({
    this.id,
    this.ord,
    this.type,
    this.name,
    this.img,
    this.urlL,
    this.withId,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        ord: json['ord'] as int?,
        type: json['type'] as String?,
        name: json['name'] as dynamic,
        img: json['img'] as String?,
        urlL: json['url_l'] as dynamic,
        withId: json['with_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'ord': ord,
        'type': type,
        'name': name,
        'img': img,
        'url_l': urlL,
        'with_id': withId,
      };
}
