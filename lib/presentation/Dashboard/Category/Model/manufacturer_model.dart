class ManufacturerModel {
  List<List1>? list1;
  int? count;
  int? total;
  int? currentPage;
  dynamic totalPage;

  ManufacturerModel({
    this.list1,
    this.count,
    this.total,
    this.currentPage,
    this.totalPage,
  });

  ManufacturerModel.fromJson(Map<String, dynamic> json) {
    list1 = (json['list'] as List?)?.map((dynamic e) => List1.fromJson(e as Map<String,dynamic>)).toList();
    count = json['count'] as int?;
    total = json['total'] as int?;
    currentPage = json['currentPage'] as int?;
    totalPage = json['totalPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['list'] = list1?.map((e) => e.toJson()).toList();
    json['count'] = count;
    json['total'] = total;
    json['currentPage'] = currentPage;
    json['totalPage'] = totalPage;
    return json;
  }
}

class List1 {
  String? id;
  String? name;
  String? slug;
  String? image;
  String? publishedAt;
  dynamic lastModifiedAt;
  String? shortDescription;
  String? cmsTopContent;
  String? cmsBottomContent;
  String? description;
  int? orderTotalQty;
  MetaData? metaData;
  List<dynamic>? crumbPath;

  List1({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.publishedAt,
    this.lastModifiedAt,
    this.shortDescription,
    this.cmsTopContent,
    this.cmsBottomContent,
    this.description,
    this.orderTotalQty,
    this.metaData,
    this.crumbPath,
  });

  List1.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    slug = json['slug'] as String?;
    image = json['image'] as String?;
    publishedAt = json['publishedAt'] as String?;
    lastModifiedAt = json['lastModifiedAt'] ;
    shortDescription = json['shortDescription'] as String?;
    cmsTopContent = json['cmsTopContent'] as String?;
    cmsBottomContent = json['cmsBottomContent'] as String?;
    description = json['description'] as String?;
    orderTotalQty = json['order_total_qty'] as int?;
    metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null;
    crumbPath = json['crumbPath'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['slug'] = slug;
    json['image'] = image;
    json['publishedAt'] = publishedAt;
    json['lastModifiedAt'] = lastModifiedAt;
    json['shortDescription'] = shortDescription;
    json['cmsTopContent'] = cmsTopContent;
    json['cmsBottomContent'] = cmsBottomContent;
    json['description'] = description;
    json['order_total_qty'] = orderTotalQty;
    json['metaData'] = metaData?.toJson();
    json['crumbPath'] = crumbPath;
    return json;
  }
}

class MetaData {
  String? title;
  String? robots;
  String? keywords;
  String? description;
  String? canonicalUrl;
  String? image;
  int? imageWidth;
  int? imageHeight;

  MetaData({
    this.title,
    this.robots,
    this.keywords,
    this.description,
    this.canonicalUrl,
    this.image,
    this.imageWidth,
    this.imageHeight,
  });

  MetaData.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    robots = json['robots'] as String?;
    keywords = json['keywords'] as String?;
    description = json['description'] as String?;
    canonicalUrl = json['canonicalUrl'] as String?;
    image = json['image'] as String?;
    imageWidth = json['imageWidth'] as int?;
    imageHeight = json['imageHeight'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    json['robots'] = robots;
    json['keywords'] = keywords;
    json['description'] = description;
    json['canonicalUrl'] = canonicalUrl;
    json['image'] = image;
    json['imageWidth'] = imageWidth;
    json['imageHeight'] = imageHeight;
    return json;
  }
}