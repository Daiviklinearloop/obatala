import 'package:get/get.dart';

class ProductListFilter {
  String? type;
  String? label;
  String? id;
  List<Children>? children;

  ProductListFilter({
    this.type,
    this.label,
    this.id,
    this.children,
  });

  ProductListFilter.fromJson( dynamic json) {
    type = json['type'] as String?;
    label = json['label'] as String?;
    id = json['id'] as String?;
    children = (json['children'] as List?)?.map((dynamic e) => Children.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['type'] = type;
    json['label'] = label;
    json['id'] = id;
    json['children'] = children?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Children {
  String? label;
  String? id;
  String? description;
  int? counter;
  RxBool? checked=false.obs;

  Children({
    this.label,
    this.id,
    this.description,
    this.counter,
    this.checked,
  });

  Children.fromJson(Map<String, dynamic> json) {
    label = json['label'] as String?;
    id = json['id'] as String?;
    description = json['description'] as String?;
    counter = json['counter'] as int?;
    checked!.value = json['checked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['label'] = label;
    json['id'] = id;
    json['description'] = description;
    json['counter'] = counter;
    json['checked'] = checked;
    return json;
  }
}