class productFilter{
  String? type;
  String? label;
  String? id;

  productFilter({this.type,this.label,this.id});

  factory productFilter.fromJson(Map<String, dynamic> parsedJson){
    return productFilter(
        type: parsedJson['type'].toString(),
        label : parsedJson['label'].toString(),
        id: parsedJson['id'].toString()
    );
  }
}