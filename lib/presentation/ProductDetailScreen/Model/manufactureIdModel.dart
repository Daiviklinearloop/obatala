class ManufacturerIdModel {
  String? id;
  String? name;
  String? title;
  dynamic slug;
  String? image;
  String? publishedAt;
  String? lastModifiedAt;
  String? shortDescription;
  String? cmsTopContent;
  String? cmsBottomContent;
  String? description;
  Layout? layout;
  List<CrumbPath>? crumbPath;
  bool? attributes;
  MetaData? metaData;

  ManufacturerIdModel({
    this.id,
    this.name,
    this.title,
    this.slug,
    this.image,
    this.publishedAt,
    this.lastModifiedAt,
    this.shortDescription,
    this.cmsTopContent,
    this.cmsBottomContent,
    this.description,
    this.layout,
    this.crumbPath,
    this.attributes,
    this.metaData,
  });

  ManufacturerIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    title = json['title'] as String?;
    slug = json['slug'];
    image = json['image'] as String?;
    publishedAt = json['publishedAt'] as String?;
    lastModifiedAt = json['lastModifiedAt'] as String?;
    shortDescription = json['shortDescription'] as String?;
    cmsTopContent = json['cmsTopContent'] as String?;
    cmsBottomContent = json['cmsBottomContent'] as String?;
    description = json['description'] as String?;
    layout = (json['layout'] as Map<String,dynamic>?) != null ? Layout.fromJson(json['layout'] as Map<String,dynamic>) : null;
    crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList();
    attributes = json['attributes'] as bool?;
    metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['title'] = title;
    json['slug'] = slug;
    json['image'] = image;
    json['publishedAt'] = publishedAt;
    json['lastModifiedAt'] = lastModifiedAt;
    json['shortDescription'] = shortDescription;
    json['cmsTopContent'] = cmsTopContent;
    json['cmsBottomContent'] = cmsBottomContent;
    json['description'] = description;
    json['layout'] = layout?.toJson();
    json['crumbPath'] = crumbPath?.map((e) => e.toJson()).toList();
    json['attributes'] = attributes;
    json['metaData'] = metaData?.toJson();
    return json;
  }
}

class Layout {
  bool? left;
  bool? right;

  Layout({
    this.left,
    this.right,
  });

  Layout.fromJson(Map<String, dynamic> json) {
    left = json['left'] as bool?;
    right = json['right'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['left'] = left;
    json['right'] = right;
    return json;
  }
}

class CrumbPath {
  String? id;
  String? name;
  String? slug;

  CrumbPath({
    this.id,
    this.name,
    this.slug,
  });

  CrumbPath.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    slug = json['slug'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['slug'] = slug;
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