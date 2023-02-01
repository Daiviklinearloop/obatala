class CategoryDetailModel {
  String? id;
  String? parentId;
  String? name;
  String? externalUrl;
  String? title;
  List<CrumbPath>? crumbPath;
  String? image;
  String? publishedAt;
  String? lastModifiedAt;
  int? hasProducts;
  String? description;
  String? cmsBottomContent;
  String? slug;
  Layout? layout;
  String? showProductsInsideCarousel;
  bool? attributes;
  List<String>? banners;
  MetaData? metaData;
  String? cmsTopContent;

  CategoryDetailModel(
      {this.id,
        this.parentId,
        this.name,
        this.externalUrl,
        this.title,
        this.crumbPath,
        this.image,
        this.publishedAt,
        this.lastModifiedAt,
        this.hasProducts,
        this.description,
        this.cmsBottomContent,
        this.slug,
        this.layout,
        this.showProductsInsideCarousel,
        this.attributes,
        this.banners,
        this.metaData,
        this.cmsTopContent});

  CategoryDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parentId'];
    name = json['name'];
    externalUrl = json['externalUrl'];
    title = json['title'];
    if (json['crumbPath'] != null) {
      crumbPath = <CrumbPath>[];
      json['crumbPath'].forEach((v) {
        crumbPath!.add(new CrumbPath.fromJson(v));
      });
    }
    image = json['image'];
    publishedAt = json['publishedAt'];
    lastModifiedAt = json['lastModifiedAt'];
    hasProducts = json['hasProducts'];
    description = json['description'];
    cmsBottomContent = json['cmsBottomContent'];
    slug = json['slug'];
    layout =
    json['layout'] != null ? new Layout.fromJson(json['layout']) : null;
    showProductsInsideCarousel = json['showProductsInsideCarousel'];
    attributes = json['attributes'];
    banners = json['banners'].cast<String>();
    metaData = json['metaData'] != null
        ? new MetaData.fromJson(json['metaData'])
        : null;
    cmsTopContent = json['cmsTopContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parentId'] = this.parentId;
    data['name'] = this.name;
    data['externalUrl'] = this.externalUrl;
    data['title'] = this.title;
    if (this.crumbPath != null) {
      data['crumbPath'] = this.crumbPath!.map((v) => v.toJson()).toList();
    }
    data['image'] = this.image;
    data['publishedAt'] = this.publishedAt;
    data['lastModifiedAt'] = this.lastModifiedAt;
    data['hasProducts'] = this.hasProducts;
    data['description'] = this.description;
    data['cmsBottomContent'] = this.cmsBottomContent;
    data['slug'] = this.slug;
    if (this.layout != null) {
      data['layout'] = this.layout!.toJson();
    }
    data['showProductsInsideCarousel'] = this.showProductsInsideCarousel;
    data['attributes'] = this.attributes;
    data['banners'] = this.banners;
    if (this.metaData != null) {
      data['metaData'] = this.metaData!.toJson();
    }
    data['cmsTopContent'] = this.cmsTopContent;
    return data;
  }
}

class CrumbPath {
  String? id;
  String? name;
  String? slug;

  CrumbPath({this.id, this.name, this.slug});

  CrumbPath.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}

class Layout {
  bool? left;
  bool? right;

  Layout({this.left, this.right});

  Layout.fromJson(Map<String, dynamic> json) {
    left = json['left'];
    right = json['right'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['left'] = this.left;
    data['right'] = this.right;
    return data;
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

  MetaData(
      {this.title,
        this.robots,
        this.keywords,
        this.description,
        this.canonicalUrl,
        this.image,
        this.imageWidth,
        this.imageHeight});

  MetaData.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    robots = json['robots'];
    keywords = json['keywords'];
    description = json['description'];
    canonicalUrl = json['canonicalUrl'];
    image = json['image'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['robots'] = this.robots;
    data['keywords'] = this.keywords;
    data['description'] = this.description;
    data['canonicalUrl'] = this.canonicalUrl;
    data['image'] = this.image;
    data['imageWidth'] = this.imageWidth;
    data['imageHeight'] = this.imageHeight;
    return data;
  }
}