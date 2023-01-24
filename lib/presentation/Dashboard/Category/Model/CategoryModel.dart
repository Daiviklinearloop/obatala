class CategoryModel {
  List<List1>? list1;
  int? count;
  int? total;
  int? currentPage;
  Null? totalPage;

  CategoryModel(
      {this.list1, this.count, this.total, this.currentPage, this.totalPage});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list1 = <List1>[];
      json['list'].forEach((v) {
        list1!.add(new List1.fromJson(v));
      });
    }
    count = json['count'];
    total = json['total'];
    currentPage = json['currentPage'];
    totalPage = json['totalPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list1 != null) {
      data['list'] = this.list1!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    data['total'] = this.total;
    data['currentPage'] = this.currentPage;
    data['totalPage'] = this.totalPage;
    return data;
  }
}

class List1 {
  String? id;
  String? parentId;
  String? name;
  String? description;
  String? cmsBottomContent;
  String? publishedAt;
  String? lastModifiedAt;
  String? image;
  List<CrumbPath>? crumbPath;
  String? slug;
  dynamic metaData;
  String? cmsTopContent;

  List1(
      {this.id,
        this.parentId,
        this.name,
        this.description,
        this.cmsBottomContent,
        this.publishedAt,
        this.lastModifiedAt,
        this.image,
        this.crumbPath,
        this.slug,
        this.metaData,
        this.cmsTopContent});

  List1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parentId'];
    name = json['name'];
    description = json['description'];
    cmsBottomContent = json['cmsBottomContent'];
    publishedAt = json['publishedAt'];
    lastModifiedAt = json['lastModifiedAt'];
    image = json['image'];
    if (json['crumbPath'] != null) {
      crumbPath = <CrumbPath>[];
      json['crumbPath'].forEach((v) {
        crumbPath!.add(new CrumbPath.fromJson(v));
      });
    }
    slug = json['slug'];
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
    data['description'] = this.description;
    data['cmsBottomContent'] = this.cmsBottomContent;
    data['publishedAt'] = this.publishedAt;
    data['lastModifiedAt'] = this.lastModifiedAt;
    data['image'] = this.image;
    if (this.crumbPath != null) {
      data['crumbPath'] = this.crumbPath!.map((v) => v.toJson()).toList();
    }
    data['slug'] = this.slug;
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

class MetaData {
  String? title;
  String? robots;
  String? keywords;
  String? description;
  String? canonicalUrl;
  String? image;
  dynamic imageWidth;
  dynamic imageHeight;

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