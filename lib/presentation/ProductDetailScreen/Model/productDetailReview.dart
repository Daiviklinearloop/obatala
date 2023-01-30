class ProductDetailReviewModel {
  List<List1>? list1;
  int? count;
  int? total;
  int? currentPage;
  int? totalPage;

  ProductDetailReviewModel({
    this.list1,
    this.count,
    this.total,
    this.currentPage,
    this.totalPage,
  });

  ProductDetailReviewModel.fromJson(Map<String, dynamic> json) {
    list1 = (json['list'] as List?)?.map((dynamic e) => List1.fromJson(e as Map<String,dynamic>)).toList();
    count = json['count'] as int?;
    total = json['total'] as int?;
    currentPage = json['currentPage'] as int?;
    totalPage = json['totalPage'] as int?;
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
  int? reviewScore;
  int? ratingScore;
  String? ratingMaxScore;
  String? ratingStars;
  String? reviewTitle;
  String? reviewAuthor;
  String? reviewContent;
  String? reviewLikeCount;
  String? createdAt;
  String? rawCreatedAt;
  String? reviewAnswer;
  String? reviewAnswerAuthor;
  String? reviewAnswerCreatedAt;
  List<dynamic>? reviewImages;

  List1({
    this.id,
    this.reviewScore,
    this.ratingScore,
    this.ratingMaxScore,
    this.ratingStars,
    this.reviewTitle,
    this.reviewAuthor,
    this.reviewContent,
    this.reviewLikeCount,
    this.createdAt,
    this.rawCreatedAt,
    this.reviewAnswer,
    this.reviewAnswerAuthor,
    this.reviewAnswerCreatedAt,
    this.reviewImages,
  });

  List1.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    reviewScore = json['reviewScore'] as int?;
    ratingScore = json['ratingScore'] as int?;
    ratingMaxScore = json['ratingMaxScore'] as String?;
    ratingStars = json['ratingStars'] as String?;
    reviewTitle = json['reviewTitle'] as String?;
    reviewAuthor = json['reviewAuthor'] as String?;
    reviewContent = json['reviewContent'] as String?;
    reviewLikeCount = json['reviewLikeCount'] as String?;
    createdAt = json['createdAt'] as String?;
    rawCreatedAt = json['rawCreatedAt'] as String?;
    reviewAnswer = json['reviewAnswer'] as String?;
    reviewAnswerAuthor = json['reviewAnswerAuthor'] as String?;
    reviewAnswerCreatedAt = json['reviewAnswerCreatedAt'] as String?;
    reviewImages = json['reviewImages'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['reviewScore'] = reviewScore;
    json['ratingScore'] = ratingScore;
    json['ratingMaxScore'] = ratingMaxScore;
    json['ratingStars'] = ratingStars;
    json['reviewTitle'] = reviewTitle;
    json['reviewAuthor'] = reviewAuthor;
    json['reviewContent'] = reviewContent;
    json['reviewLikeCount'] = reviewLikeCount;
    json['createdAt'] = createdAt;
    json['rawCreatedAt'] = rawCreatedAt;
    json['reviewAnswer'] = reviewAnswer;
    json['reviewAnswerAuthor'] = reviewAnswerAuthor;
    json['reviewAnswerCreatedAt'] = reviewAnswerCreatedAt;
    json['reviewImages'] = reviewImages;
    return json;
  }
}