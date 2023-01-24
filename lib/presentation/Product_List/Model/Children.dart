class Children {
  Children({
      this.label, 
      this.id, 
      this.description, 
      this.counter, 
      this.checked,});

  Children.fromJson(dynamic json) {
    label = json['label'];
    id = json['id'];
    description = json['description'];
    counter = json['counter'];
    checked = json['checked'];
  }
  String? label;
  String? id;
  String? description;
  int? counter;
  bool? checked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['id'] = id;
    map['description'] = description;
    map['counter'] = counter;
    map['checked'] = checked;
    return map;
  }

}