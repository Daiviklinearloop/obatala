class Productlist {
  String? type;
  String? label;
  String? id;
  List<Children>? children;

  Productlist({this.type, this.label, this.id, this.children});

  Productlist.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    label = json['label'];
    id = json['id'];
    if (json['children'] != null) {
      children = <Children>[];
      json['children'].forEach((v) {
        children!.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['label'] = this.label;
    data['id'] = this.id;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  String? label;
  String? id;
  String? description;
  int? counter;
  bool? checked;

  Children({this.label, this.id, this.description, this.counter, this.checked});

  Children.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    id = json['id'];
    description = json['description'];
    counter = json['counter'];
    checked = json['checked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['id'] = this.id;
    data['description'] = this.description;
    data['counter'] = this.counter;
    data['checked'] = this.checked;
    return data;
  }
}