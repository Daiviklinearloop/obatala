class ProductDetailModel {
  List<CrumbPath>? crumbPath;
  String? categoryId;
  String? categoryName;
  String? manufacturerId;
  String? manufacturerName;
  String? maxQty;
  int? minQty;
  String? id;
  String? productsDateAvailable;
  String? description;
  String? condition;
  String? productsViewed;
  String? model;
  String? multiplier;
  String? name;
  dynamic oldPrice;
  dynamic price;
  String? staffelPrice;
  double? taxRate;
  String? shortDescription;
  String? eanCode;
  String? sku;
  String? productsDateAdded;
  String? lastModifiedAt;
  String? active;
  String? title;
  String? productsUrl;
  String? productsQuantity;
  String? visibleInProductsListingPage;
  String? visibleInProductsDetailPage;
  String? visibleInProductFeed;
  String? productIsOrderable;
  String? stockIndicatorClassName;
  String? stockIndicatorTitle;
  String? stockIndicatorDescription;
  String? addToCartButtonLabel;
  String? addToCartButtonLink;
  String? allowDeliveryDate;
  String? stockIndicatorId;
  String? productsVendorCode;
  List<DescriptionTabs>? descriptionTabs;
  List<ProductFiles>? productFiles;
  int? inStock;
  int? inStockIcon;
  String? stockIndicator;
  String? stockDeliveryTime;
  dynamic priceExclTax;
  dynamic finalPriceInclTax;
  String? slug;
  int? ratingCount;
  int? ratingValue;
  Review? review;
  String? ratingMaxScore;
  int? ratingStars;
  bool? wishlist;
  String? usp;
  List<dynamic>? specifications;
  List<dynamic>? faq;
  List<dynamic>? media;
  List<Attributes1>? attributes1;
  List<dynamic>? customLabel;
  List<dynamic>? subProducts;
  dynamic orderUnitId;
  dynamic orderUnitName;
  String? productsSku;
  bool? indexingAllowed;
  SimpleProductVariations? simpleProductVariations;
  String? stockClass;
  String? stockIndicatorAltTitle;
  String? stockIndicatorAltDescription;
  String? stockIndicatorAltStartTime;
  String? stockIndicatorAltEndTime;
  MetaData? metaData;
  List<String>? images;
  List<dynamic>? imageTitles;

  ProductDetailModel({
    this.crumbPath,
    this.categoryId,
    this.categoryName,
    this.manufacturerId,
    this.manufacturerName,
    this.maxQty,
    this.minQty,
    this.id,
    this.productsDateAvailable,
    this.description,
    this.condition,
    this.productsViewed,
    this.model,
    this.multiplier,
    this.name,
    this.oldPrice,
    this.price,
    this.staffelPrice,
    this.taxRate,
    this.shortDescription,
    this.eanCode,
    this.sku,
    this.productsDateAdded,
    this.lastModifiedAt,
    this.active,
    this.title,
    this.productsUrl,
    this.productsQuantity,
    this.visibleInProductsListingPage,
    this.visibleInProductsDetailPage,
    this.visibleInProductFeed,
    this.productIsOrderable,
    this.stockIndicatorClassName,
    this.stockIndicatorTitle,
    this.stockIndicatorDescription,
    this.addToCartButtonLabel,
    this.addToCartButtonLink,
    this.allowDeliveryDate,
    this.stockIndicatorId,
    this.productsVendorCode,
    this.descriptionTabs,
    this.productFiles,
    this.inStock,
    this.inStockIcon,
    this.stockIndicator,
    this.stockDeliveryTime,
    this.priceExclTax,
    this.finalPriceInclTax,
    this.slug,
    this.ratingCount,
    this.ratingValue,
    this.review,
    this.ratingMaxScore,
    this.ratingStars,
    this.wishlist,
    this.usp,
    this.specifications,
    this.faq,
    this.media,
    this.attributes1,
    this.customLabel,
    this.subProducts,
    this.orderUnitId,
    this.orderUnitName,
    this.productsSku,
    this.indexingAllowed,
    this.simpleProductVariations,
    this.stockClass,
    this.stockIndicatorAltTitle,
    this.stockIndicatorAltDescription,
    this.stockIndicatorAltStartTime,
    this.stockIndicatorAltEndTime,
    this.metaData,
    this.images,
    this.imageTitles,
  });

  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList();
    categoryId = json['categoryId'] as String?;
    categoryName = json['categoryName'] as String?;
    manufacturerId = json['manufacturerId'] as String?;
    manufacturerName = json['manufacturerName'] as String?;
    maxQty = json['maxQty'] as String?;
    minQty = json['minQty'] as int?;
    id = json['id'] as String?;
    productsDateAvailable = json['products_date_available'] as String?;
    description = json['description'] as String?;
    condition = json['condition'] as String?;
    productsViewed = json['products_viewed'] as String?;
    model = json['model'] as String?;
    multiplier = json['multiplier'] as String?;
    name = json['name'] as String?;
    oldPrice = json['oldPrice'] ;
    price = json['price'] ;
    staffelPrice = json['staffel_price'] as String?;
    taxRate = json['tax_rate'] as double?;
    shortDescription = json['shortDescription'] as String?;
    eanCode = json['eanCode'] as String?;
    sku = json['sku'] as String?;
    productsDateAdded = json['products_date_added'] as String?;
    lastModifiedAt = json['lastModifiedAt'] as String?;
    active = json['active'] as String?;
    title = json['title'] as String?;
    productsUrl = json['products_url'] as String?;
    productsQuantity = json['products_quantity'] as String?;
    visibleInProductsListingPage = json['visible_in_products_listing_page'] as String?;
    visibleInProductsDetailPage = json['visible_in_products_detail_page'] as String?;
    visibleInProductFeed = json['visible_in_product_feed'] as String?;
    productIsOrderable = json['product_is_orderable'] as String?;
    stockIndicatorClassName = json['stock_indicator_class_name'] as String?;
    stockIndicatorTitle = json['stock_indicator_title'] as String?;
    stockIndicatorDescription = json['stock_indicator_description'] as String?;
    addToCartButtonLabel = json['add_to_cart_button_label'] as String?;
    addToCartButtonLink = json['add_to_cart_button_link'] as String?;
    allowDeliveryDate = json['allow_delivery_date'] as String?;
    stockIndicatorId = json['stock_indicator_id'] as String?;
    productsVendorCode = json['products_vendor_code'] as String?;
    descriptionTabs = (json['descriptionTabs'] as List?)?.map((dynamic e) => DescriptionTabs.fromJson(e as Map<String,dynamic>)).toList();
    productFiles = (json['productFiles'] as List?)?.map((dynamic e) => ProductFiles.fromJson(e as Map<String,dynamic>)).toList();
    inStock = json['inStock'] as int?;
    inStockIcon = json['inStockIcon'] as int?;
    stockIndicator = json['stockIndicator'] as String?;
    stockDeliveryTime = json['stockDeliveryTime'] as String?;
    priceExclTax = json['priceExclTax'] ;
    finalPriceInclTax = json['final_price_incl_tax'] ;
    slug = json['slug'] as String?;
    ratingCount = json['ratingCount'] as int?;
    ratingValue = json['ratingValue'] as int?;
    review = (json['review'] as Map<String,dynamic>?) != null ? Review.fromJson(json['review'] as Map<String,dynamic>) : null;
    ratingMaxScore = json['rating_max_score'] as String?;
    ratingStars = json['rating_stars'] as int?;
    wishlist = json['wishlist'] as bool?;
    usp = json['usp'] as String?;
    specifications = json['specifications'] as List?;
    faq = json['faq'] as List?;
    media = json['media'] as List?;
    attributes1 = (json['attributes1'] as List?)?.map((dynamic e) => Attributes1.fromJson(e as Map<String,dynamic>)).toList();
    customLabel = json['customLabel'] as List?;
    subProducts = json['subProducts'] as List?;
    orderUnitId = json['order_unit_id'];
    orderUnitName = json['order_unit_name'];
    productsSku = json['products_sku'] as String?;
    indexingAllowed = json['indexingAllowed'] as bool?;
    simpleProductVariations = (json['simpleProductVariations'] as Map<String,dynamic>?) != null ? SimpleProductVariations.fromJson(json['simpleProductVariations'] as Map<String,dynamic>) : null;
    stockClass = json['stockClass'] as String?;
    stockIndicatorAltTitle = json['stock_indicator_alt_title'] as String?;
    stockIndicatorAltDescription = json['stock_indicator_alt_description'] as String?;
    stockIndicatorAltStartTime = json['stock_indicator_alt_start_time'] as String?;
    stockIndicatorAltEndTime = json['stock_indicator_alt_end_time'] as String?;
    metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null;
    images = (json['images'] as List?)?.map((dynamic e) => e as String).toList();
    imageTitles = json['imageTitles'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['crumbPath'] = crumbPath?.map((e) => e.toJson()).toList();
    json['categoryId'] = categoryId;
    json['categoryName'] = categoryName;
    json['manufacturerId'] = manufacturerId;
    json['manufacturerName'] = manufacturerName;
    json['maxQty'] = maxQty;
    json['minQty'] = minQty;
    json['id'] = id;
    json['products_date_available'] = productsDateAvailable;
    json['description'] = description;
    json['condition'] = condition;
    json['products_viewed'] = productsViewed;
    json['model'] = model;
    json['multiplier'] = multiplier;
    json['name'] = name;
    json['oldPrice'] = oldPrice;
    json['price'] = price;
    json['staffel_price'] = staffelPrice;
    json['tax_rate'] = taxRate;
    json['shortDescription'] = shortDescription;
    json['eanCode'] = eanCode;
    json['sku'] = sku;
    json['products_date_added'] = productsDateAdded;
    json['lastModifiedAt'] = lastModifiedAt;
    json['active'] = active;
    json['title'] = title;
    json['products_url'] = productsUrl;
    json['products_quantity'] = productsQuantity;
    json['visible_in_products_listing_page'] = visibleInProductsListingPage;
    json['visible_in_products_detail_page'] = visibleInProductsDetailPage;
    json['visible_in_product_feed'] = visibleInProductFeed;
    json['product_is_orderable'] = productIsOrderable;
    json['stock_indicator_class_name'] = stockIndicatorClassName;
    json['stock_indicator_title'] = stockIndicatorTitle;
    json['stock_indicator_description'] = stockIndicatorDescription;
    json['add_to_cart_button_label'] = addToCartButtonLabel;
    json['add_to_cart_button_link'] = addToCartButtonLink;
    json['allow_delivery_date'] = allowDeliveryDate;
    json['stock_indicator_id'] = stockIndicatorId;
    json['products_vendor_code'] = productsVendorCode;
    json['descriptionTabs'] = descriptionTabs?.map((e) => e.toJson()).toList();
    json['productFiles'] = productFiles?.map((e) => e.toJson()).toList();
    json['inStock'] = inStock;
    json['inStockIcon'] = inStockIcon;
    json['stockIndicator'] = stockIndicator;
    json['stockDeliveryTime'] = stockDeliveryTime;
    json['priceExclTax'] = priceExclTax;
    json['final_price_incl_tax'] = finalPriceInclTax;
    json['slug'] = slug;
    json['ratingCount'] = ratingCount;
    json['ratingValue'] = ratingValue;
    json['review'] = review?.toJson();
    json['rating_max_score'] = ratingMaxScore;
    json['rating_stars'] = ratingStars;
    json['wishlist'] = wishlist;
    json['usp'] = usp;
    json['specifications'] = specifications;
    json['faq'] = faq;
    json['media'] = media;
    json['attributes'] = attributes1?.map((e) => e.toJson()).toList();
    json['customLabel'] = customLabel;
    json['subProducts'] = subProducts;
    json['order_unit_id'] = orderUnitId;
    json['order_unit_name'] = orderUnitName;
    json['products_sku'] = productsSku;
    json['indexingAllowed'] = indexingAllowed;
    json['simpleProductVariations'] = simpleProductVariations?.toJson();
    json['stockClass'] = stockClass;
    json['stock_indicator_alt_title'] = stockIndicatorAltTitle;
    json['stock_indicator_alt_description'] = stockIndicatorAltDescription;
    json['stock_indicator_alt_start_time'] = stockIndicatorAltStartTime;
    json['stock_indicator_alt_end_time'] = stockIndicatorAltEndTime;
    json['metaData'] = metaData?.toJson();
    json['images'] = images;
    json['imageTitles'] = imageTitles;
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

class DescriptionTabs {
  String? title;
  String? content;

  DescriptionTabs({
    this.title,
    this.content,
  });

  DescriptionTabs.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    content = json['content'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    json['content'] = content;
    return json;
  }
}

class ProductFiles {
  String? faIcon;
  String? fileName;
  String? fileLocation;
  String? fileSize;

  ProductFiles({
    this.faIcon,
    this.fileName,
    this.fileLocation,
    this.fileSize,
  });

  ProductFiles.fromJson(Map<String, dynamic> json) {
    faIcon = json['faIcon'] as String?;
    fileName = json['fileName'] as String?;
    fileLocation = json['fileLocation'] as String?;
    fileSize = json['fileSize'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['faIcon'] = faIcon;
    json['fileName'] = fileName;
    json['fileLocation'] = fileLocation;
    json['fileSize'] = fileSize;
    return json;
  }
}

class Review {
  String? reviewAuthor;
  String? createdAt;
  String? reviewContent;
  String? reviewTitle;
  String? ratingScore;
  String? ratingMaxScore;
  dynamic reviewImages;
  String? ratingStars;

  Review({
    this.reviewAuthor,
    this.createdAt,
    this.reviewContent,
    this.reviewTitle,
    this.ratingScore,
    this.ratingMaxScore,
    this.reviewImages,
    this.ratingStars,
  });

  Review.fromJson(Map<String, dynamic> json) {
    reviewAuthor = json['reviewAuthor'] as String?;
    createdAt = json['createdAt'] as String?;
    reviewContent = json['reviewContent'] as String?;
    reviewTitle = json['reviewTitle'] as String?;
    ratingScore = json['ratingScore'] as String?;
    ratingMaxScore = json['ratingMaxScore'] as String?;
    reviewImages = json['reviewImages'];
    ratingStars = json['rating_stars'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['reviewAuthor'] = reviewAuthor;
    json['createdAt'] = createdAt;
    json['reviewContent'] = reviewContent;
    json['reviewTitle'] = reviewTitle;
    json['ratingScore'] = ratingScore;
    json['ratingMaxScore'] = ratingMaxScore;
    json['reviewImages'] = reviewImages;
    json['rating_stars'] = ratingStars;
    return json;
  }
}

class Attributes1 {
  String? groupName;
  List<Attributes>? attributes;

  Attributes1({
    this.groupName,
    this.attributes,
  });

  Attributes1.fromJson(Map<String, dynamic> json) {
    groupName = json['groupName'] as String?;
    attributes = (json['attributes'] as List?)?.map((dynamic e) => Attributes.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['groupName'] = groupName;
    json['attributes'] = attributes?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Attributes {
  String? required;
  String? id;
  String? name;
  dynamic description;
  String? type;
  String? hide;
  dynamic groupName;
  List<Values>? values;

  Attributes({
    this.required,
    this.id,
    this.name,
    this.description,
    this.type,
    this.hide,
    this.groupName,
    this.values,
  });

  Attributes.fromJson(Map<String, dynamic> json) {
    required = json['required'] as String?;
    id = json['id'] as String?;
    name = json['name'] as String?;
    description = json['description'];
    type = json['type'] as String?;
    hide = json['hide'] as String?;
    groupName = json['groupName'];
    values = (json['values'] as List?)?.map((dynamic e) => Values.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['required'] = required;
    json['id'] = id;
    json['name'] = name;
    json['description'] = description;
    json['type'] = type;
    json['hide'] = hide;
    json['groupName'] = groupName;
    json['values'] = values?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Values {
  String? id;
  String? name;
  int? price;
  String? valueId;
  String? pricePrefix;
  dynamic description;
  String? priceExclTax;

  Values({
    this.id,
    this.name,
    this.price,
    this.valueId,
    this.pricePrefix,
    this.description,
    this.priceExclTax,
  });

  Values.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    price = json['price'] as int?;
    valueId = json['valueId'] as String?;
    pricePrefix = json['pricePrefix'] as String?;
    description = json['description'];
    priceExclTax = json['priceExclTax'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['price'] = price;
    json['valueId'] = valueId;
    json['pricePrefix'] = pricePrefix;
    json['description'] = description;
    json['priceExclTax'] = priceExclTax;
    return json;
  }
}

class SimpleProductVariations {
  String? label;
  List<dynamic>? data;

  SimpleProductVariations({
    this.label,
    this.data,
  });

  SimpleProductVariations.fromJson(Map<String, dynamic> json) {
    label = json['label'] as String?;
    data = json['data'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['label'] = label;
    json['data'] = data;
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


// // class ProductDetailModel {
// //   final List<CrumbPath>? crumbPath;
// //   final String? categoryId;
// //   final String? categoryName;
// //   final String? manufacturerId;
// //   final String? manufacturerName;
// //   final String? maxQty;
// //   final int? minQty;
// //   final String? id;
// //   final String? productsDateAvailable;
// //   final String? description;
// //   final String? condition;
// //   final String? productsViewed;
// //   final String? model;
// //   final String? multiplier;
// //   final String? name;
// //   final dynamic oldPrice;
// //   final dynamic price;
// //   final String? staffelPrice;
// //   final double? taxRate;
// //   final String? shortDescription;
// //   final String? eanCode;
// //   final String? sku;
// //   final String? productsDateAdded;
// //   final String? lastModifiedAt;
// //   final String? active;
// //   final String? title;
// //   final String? productsUrl;
// //   final String? productsQuantity;
// //   final String? visibleInProductsListingPage;
// //   final String? visibleInProductsDetailPage;
// //   final String? visibleInProductFeed;
// //   final String? productIsOrderable;
// //   final String? stockIndicatorClassName;
// //   final String? stockIndicatorTitle;
// //   final String? stockIndicatorDescription;
// //   final String? addToCartButtonLabel;
// //   final String? addToCartButtonLink;
// //   final String? allowDeliveryDate;
// //   final String? stockIndicatorId;
// //   final String? productsVendorCode;
// //   final List<DescriptionTabs>? descriptionTabs;
// //   final List<ProductFiles>? productFiles;
// //   final int? inStock;
// //   final int? inStockIcon;
// //   final String? stockIndicator;
// //   final String? stockDeliveryTime;
// //   final dynamic priceExclTax;
// //   final dynamic finalPriceInclTax;
// //   final String? slug;
// //   final int? ratingCount;
// //   final int? ratingValue;
// //   final Review? review;
// //   final String? ratingMaxScore;
// //   final int? ratingStars;
// //   final bool? wishlist;
// //   final String? usp;
// //   final List<dynamic>? specifications;
// //   final List<dynamic>? faq;
// //   final List<dynamic>? media;
// //   final List<dynamic>? attributes1;
// //   final List<dynamic>? customLabel;
// //   final List<dynamic>? subProducts;
// //   final dynamic orderUnitId;
// //   final dynamic orderUnitName;
// //   final String? productsSku;
// //   final bool? indexingAllowed;
// //   final SimpleProductVariations? simpleProductVariations;
// //   final String? stockClass;
// //   final String? stockIndicatorAltTitle;
// //   final String? stockIndicatorAltDescription;
// //   final String? stockIndicatorAltStartTime;
// //   final String? stockIndicatorAltEndTime;
// //   final MetaData? metaData;
// //   final List<String>? images;
// //   final List<dynamic>? imageTitles;
// //
// //   ProductDetailModel({
// //     this.crumbPath,
// //     this.categoryId,
// //     this.categoryName,
// //     this.manufacturerId,
// //     this.manufacturerName,
// //     this.maxQty,
// //     this.minQty,
// //     this.id,
// //     this.productsDateAvailable,
// //     this.description,
// //     this.condition,
// //     this.productsViewed,
// //     this.model,
// //     this.multiplier,
// //     this.name,
// //     this.oldPrice,
// //     this.price,
// //     this.staffelPrice,
// //     this.taxRate,
// //     this.shortDescription,
// //     this.eanCode,
// //     this.sku,
// //     this.productsDateAdded,
// //     this.lastModifiedAt,
// //     this.active,
// //     this.title,
// //     this.productsUrl,
// //     this.productsQuantity,
// //     this.visibleInProductsListingPage,
// //     this.visibleInProductsDetailPage,
// //     this.visibleInProductFeed,
// //     this.productIsOrderable,
// //     this.stockIndicatorClassName,
// //     this.stockIndicatorTitle,
// //     this.stockIndicatorDescription,
// //     this.addToCartButtonLabel,
// //     this.addToCartButtonLink,
// //     this.allowDeliveryDate,
// //     this.stockIndicatorId,
// //     this.productsVendorCode,
// //     this.descriptionTabs,
// //     this.productFiles,
// //     this.inStock,
// //     this.inStockIcon,
// //     this.stockIndicator,
// //     this.stockDeliveryTime,
// //     this.priceExclTax,
// //     this.finalPriceInclTax,
// //     this.slug,
// //     this.ratingCount,
// //     this.ratingValue,
// //     this.review,
// //     this.ratingMaxScore,
// //     this.ratingStars,
// //     this.wishlist,
// //     this.usp,
// //     this.specifications,
// //     this.faq,
// //     this.media,
// //     this.attributes1,
// //     this.customLabel,
// //     this.subProducts,
// //     this.orderUnitId,
// //     this.orderUnitName,
// //     this.productsSku,
// //     this.indexingAllowed,
// //     this.simpleProductVariations,
// //     this.stockClass,
// //     this.stockIndicatorAltTitle,
// //     this.stockIndicatorAltDescription,
// //     this.stockIndicatorAltStartTime,
// //     this.stockIndicatorAltEndTime,
// //     this.metaData,
// //     this.images,
// //     this.imageTitles,
// //   });
// //
// //   ProductDetailModel copyWith({
// //     List<CrumbPath>? crumbPath,
// //     String? categoryId,
// //     String? categoryName,
// //     String? manufacturerId,
// //     String? manufacturerName,
// //     String? maxQty,
// //     int? minQty,
// //     String? id,
// //     String? productsDateAvailable,
// //     String? description,
// //     String? condition,
// //     String? productsViewed,
// //     String? model,
// //     String? multiplier,
// //     String? name,
// //     dynamic oldPrice,
// //     dynamic price,
// //     String? staffelPrice,
// //     double? taxRate,
// //     String? shortDescription,
// //     String? eanCode,
// //     String? sku,
// //     String? productsDateAdded,
// //     String? lastModifiedAt,
// //     String? active,
// //     String? title,
// //     String? productsUrl,
// //     String? productsQuantity,
// //     String? visibleInProductsListingPage,
// //     String? visibleInProductsDetailPage,
// //     String? visibleInProductFeed,
// //     String? productIsOrderable,
// //     String? stockIndicatorClassName,
// //     String? stockIndicatorTitle,
// //     String? stockIndicatorDescription,
// //     String? addToCartButtonLabel,
// //     String? addToCartButtonLink,
// //     String? allowDeliveryDate,
// //     String? stockIndicatorId,
// //     String? productsVendorCode,
// //     List<DescriptionTabs>? descriptionTabs,
// //     List<ProductFiles>? productFiles,
// //     int? inStock,
// //     int? inStockIcon,
// //     String? stockIndicator,
// //     String? stockDeliveryTime,
// //     dynamic priceExclTax,
// //     dynamic finalPriceInclTax,
// //     String? slug,
// //     int? ratingCount,
// //     int? ratingValue,
// //     Review? review,
// //     String? ratingMaxScore,
// //     int? ratingStars,
// //     bool? wishlist,
// //     String? usp,
// //     List<dynamic>? specifications,
// //     List<dynamic>? faq,
// //     List<dynamic>? media,
// //     List<dynamic>? attributes1,
// //     List<dynamic>? customLabel,
// //     List<dynamic>? subProducts,
// //     dynamic orderUnitId,
// //     dynamic orderUnitName,
// //     String? productsSku,
// //     bool? indexingAllowed,
// //     SimpleProductVariations? simpleProductVariations,
// //     String? stockClass,
// //     String? stockIndicatorAltTitle,
// //     String? stockIndicatorAltDescription,
// //     String? stockIndicatorAltStartTime,
// //     String? stockIndicatorAltEndTime,
// //     MetaData? metaData,
// //     List<String>? images,
// //     List<dynamic>? imageTitles,
// //   }) {
// //     return ProductDetailModel(
// //       crumbPath: crumbPath ?? this.crumbPath,
// //       categoryId: categoryId ?? this.categoryId,
// //       categoryName: categoryName ?? this.categoryName,
// //       manufacturerId: manufacturerId ?? this.manufacturerId,
// //       manufacturerName: manufacturerName ?? this.manufacturerName,
// //       maxQty: maxQty ?? this.maxQty,
// //       minQty: minQty ?? this.minQty,
// //       id: id ?? this.id,
// //       productsDateAvailable: productsDateAvailable ?? this.productsDateAvailable,
// //       description: description ?? this.description,
// //       condition: condition ?? this.condition,
// //       productsViewed: productsViewed ?? this.productsViewed,
// //       model: model ?? this.model,
// //       multiplier: multiplier ?? this.multiplier,
// //       name: name ?? this.name,
// //       oldPrice: oldPrice ?? this.oldPrice,
// //       price: price ?? this.price,
// //       staffelPrice: staffelPrice ?? this.staffelPrice,
// //       taxRate: taxRate ?? this.taxRate,
// //       shortDescription: shortDescription ?? this.shortDescription,
// //       eanCode: eanCode ?? this.eanCode,
// //       sku: sku ?? this.sku,
// //       productsDateAdded: productsDateAdded ?? this.productsDateAdded,
// //       lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
// //       active: active ?? this.active,
// //       title: title ?? this.title,
// //       productsUrl: productsUrl ?? this.productsUrl,
// //       productsQuantity: productsQuantity ?? this.productsQuantity,
// //       visibleInProductsListingPage: visibleInProductsListingPage ?? this.visibleInProductsListingPage,
// //       visibleInProductsDetailPage: visibleInProductsDetailPage ?? this.visibleInProductsDetailPage,
// //       visibleInProductFeed: visibleInProductFeed ?? this.visibleInProductFeed,
// //       productIsOrderable: productIsOrderable ?? this.productIsOrderable,
// //       stockIndicatorClassName: stockIndicatorClassName ?? this.stockIndicatorClassName,
// //       stockIndicatorTitle: stockIndicatorTitle ?? this.stockIndicatorTitle,
// //       stockIndicatorDescription: stockIndicatorDescription ?? this.stockIndicatorDescription,
// //       addToCartButtonLabel: addToCartButtonLabel ?? this.addToCartButtonLabel,
// //       addToCartButtonLink: addToCartButtonLink ?? this.addToCartButtonLink,
// //       allowDeliveryDate: allowDeliveryDate ?? this.allowDeliveryDate,
// //       stockIndicatorId: stockIndicatorId ?? this.stockIndicatorId,
// //       productsVendorCode: productsVendorCode ?? this.productsVendorCode,
// //       descriptionTabs: descriptionTabs ?? this.descriptionTabs,
// //       productFiles: productFiles ?? this.productFiles,
// //       inStock: inStock ?? this.inStock,
// //       inStockIcon: inStockIcon ?? this.inStockIcon,
// //       stockIndicator: stockIndicator ?? this.stockIndicator,
// //       stockDeliveryTime: stockDeliveryTime ?? this.stockDeliveryTime,
// //       priceExclTax: priceExclTax ?? this.priceExclTax,
// //       finalPriceInclTax: finalPriceInclTax ?? this.finalPriceInclTax,
// //       slug: slug ?? this.slug,
// //       ratingCount: ratingCount ?? this.ratingCount,
// //       ratingValue: ratingValue ?? this.ratingValue,
// //       review: review ?? this.review,
// //       ratingMaxScore: ratingMaxScore ?? this.ratingMaxScore,
// //       ratingStars: ratingStars ?? this.ratingStars,
// //       wishlist: wishlist ?? this.wishlist,
// //       usp: usp ?? this.usp,
// //       specifications: specifications ?? this.specifications,
// //       faq: faq ?? this.faq,
// //       media: media ?? this.media,
// //       attributes1: attributes1 ?? this.attributes1,
// //       customLabel: customLabel ?? this.customLabel,
// //       subProducts: subProducts ?? this.subProducts,
// //       orderUnitId: orderUnitId ?? this.orderUnitId,
// //       orderUnitName: orderUnitName ?? this.orderUnitName,
// //       productsSku: productsSku ?? this.productsSku,
// //       indexingAllowed: indexingAllowed ?? this.indexingAllowed,
// //       simpleProductVariations: simpleProductVariations ?? this.simpleProductVariations,
// //       stockClass: stockClass ?? this.stockClass,
// //       stockIndicatorAltTitle: stockIndicatorAltTitle ?? this.stockIndicatorAltTitle,
// //       stockIndicatorAltDescription: stockIndicatorAltDescription ?? this.stockIndicatorAltDescription,
// //       stockIndicatorAltStartTime: stockIndicatorAltStartTime ?? this.stockIndicatorAltStartTime,
// //       stockIndicatorAltEndTime: stockIndicatorAltEndTime ?? this.stockIndicatorAltEndTime,
// //       metaData: metaData ?? this.metaData,
// //       images: images ?? this.images,
// //       imageTitles: imageTitles ?? this.imageTitles,
// //     );
// //   }
// //
// //   ProductDetailModel.fromJson(Map<String, dynamic> json)
// //       : crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList(),
// //         categoryId = json['categoryId'] as String?,
// //         categoryName = json['categoryName'] as String?,
// //         manufacturerId = json['manufacturerId'] as String?,
// //         manufacturerName = json['manufacturerName'] as String?,
// //         maxQty = json['maxQty'] as String?,
// //         minQty = json['minQty'] as int?,
// //         id = json['id'] as String?,
// //         productsDateAvailable = json['products_date_available'] as String?,
// //         description = json['description'] as String?,
// //         condition = json['condition'] as String?,
// //         productsViewed = json['products_viewed'] as String?,
// //         model = json['model'] as String?,
// //         multiplier = json['multiplier'] as String?,
// //         name = json['name'] as String?,
// //         oldPrice = json['oldPrice'] ,
// //         price = json['price'] ,
// //         staffelPrice = json['staffel_price'] as String?,
// //         taxRate = json['tax_rate'] as double?,
// //         shortDescription = json['shortDescription'] as String?,
// //         eanCode = json['eanCode'] as String?,
// //         sku = json['sku'] as String?,
// //         productsDateAdded = json['products_date_added'] as String?,
// //         lastModifiedAt = json['lastModifiedAt'] as String?,
// //         active = json['active'] as String?,
// //         title = json['title'] as String?,
// //         productsUrl = json['products_url'] as String?,
// //         productsQuantity = json['products_quantity'] as String?,
// //         visibleInProductsListingPage = json['visible_in_products_listing_page'] as String?,
// //         visibleInProductsDetailPage = json['visible_in_products_detail_page'] as String?,
// //         visibleInProductFeed = json['visible_in_product_feed'] as String?,
// //         productIsOrderable = json['product_is_orderable'] as String?,
// //         stockIndicatorClassName = json['stock_indicator_class_name'] as String?,
// //         stockIndicatorTitle = json['stock_indicator_title'] as String?,
// //         stockIndicatorDescription = json['stock_indicator_description'] as String?,
// //         addToCartButtonLabel = json['add_to_cart_button_label'] as String?,
// //         addToCartButtonLink = json['add_to_cart_button_link'] as String?,
// //         allowDeliveryDate = json['allow_delivery_date'] as String?,
// //         stockIndicatorId = json['stock_indicator_id'] as String?,
// //         productsVendorCode = json['products_vendor_code'] as String?,
// //         descriptionTabs = (json['descriptionTabs'] as List?)?.map((dynamic e) => DescriptionTabs.fromJson(e as Map<String,dynamic>)).toList(),
// //         productFiles = (json['productFiles'] as List?)?.map((dynamic e) => ProductFiles.fromJson(e as Map<String,dynamic>)).toList(),
// //         inStock = json['inStock'] as int?,
// //         inStockIcon = json['inStockIcon'] as int?,
// //         stockIndicator = json['stockIndicator'] as String?,
// //         stockDeliveryTime = json['stockDeliveryTime'] as String?,
// //         priceExclTax = json['priceExclTax'],
// //         finalPriceInclTax = json['final_price_incl_tax'] ,
// //         slug = json['slug'] as String?,
// //         ratingCount = json['ratingCount'] as int?,
// //         ratingValue = json['ratingValue'] as int?,
// //         review = (json['review'] as Map<String,dynamic>?) != null ? Review.fromJson(json['review'] as Map<String,dynamic>) : null,
// //         ratingMaxScore = json['rating_max_score'] as String?,
// //         ratingStars = json['rating_stars'] as int?,
// //         wishlist = json['wishlist'] as bool?,
// //         usp = json['usp'] as String?,
// //         specifications = json['specifications'] as List?,
// //         faq = json['faq'] as List?,
// //         media = json['media'] as List?,
// //         attributes1 = (json['attributes'] ).map((dynamic e) => Attributes1.fromJson(e as Map<String,dynamic>)).toList(),
// //         customLabel = json['customLabel'] as List?,
// //         subProducts = json['subProducts'] as List?,
// //         orderUnitId = json['order_unit_id'],
// //         orderUnitName = json['order_unit_name'],
// //         productsSku = json['products_sku'] as String?,
// //         indexingAllowed = json['indexingAllowed'] as bool?,
// //         simpleProductVariations = (json['simpleProductVariations'] as Map<String,dynamic>?) != null ? SimpleProductVariations.fromJson(json['simpleProductVariations'] as Map<String,dynamic>) : null,
// //         stockClass = json['stockClass'] as String?,
// //         stockIndicatorAltTitle = json['stock_indicator_alt_title'] as String?,
// //         stockIndicatorAltDescription = json['stock_indicator_alt_description'] as String?,
// //         stockIndicatorAltStartTime = json['stock_indicator_alt_start_time'] as String?,
// //         stockIndicatorAltEndTime = json['stock_indicator_alt_end_time'] as String?,
// //         metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null,
// //         images = (json['images'] as List?)?.map((dynamic e) => e as String).toList(),
// //         imageTitles = json['imageTitles'] as List?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'crumbPath' : crumbPath?.map((e) => e.toJson()).toList(),
// //     'categoryId' : categoryId,
// //     'categoryName' : categoryName,
// //     'manufacturerId' : manufacturerId,
// //     'manufacturerName' : manufacturerName,
// //     'maxQty' : maxQty,
// //     'minQty' : minQty,
// //     'id' : id,
// //     'products_date_available' : productsDateAvailable,
// //     'description' : description,
// //     'condition' : condition,
// //     'products_viewed' : productsViewed,
// //     'model' : model,
// //     'multiplier' : multiplier,
// //     'name' : name,
// //     'oldPrice' : oldPrice,
// //     'price' : price,
// //     'staffel_price' : staffelPrice,
// //     'tax_rate' : taxRate,
// //     'shortDescription' : shortDescription,
// //     'eanCode' : eanCode,
// //     'sku' : sku,
// //     'products_date_added' : productsDateAdded,
// //     'lastModifiedAt' : lastModifiedAt,
// //     'active' : active,
// //     'title' : title,
// //     'products_url' : productsUrl,
// //     'products_quantity' : productsQuantity,
// //     'visible_in_products_listing_page' : visibleInProductsListingPage,
// //     'visible_in_products_detail_page' : visibleInProductsDetailPage,
// //     'visible_in_product_feed' : visibleInProductFeed,
// //     'product_is_orderable' : productIsOrderable,
// //     'stock_indicator_class_name' : stockIndicatorClassName,
// //     'stock_indicator_title' : stockIndicatorTitle,
// //     'stock_indicator_description' : stockIndicatorDescription,
// //     'add_to_cart_button_label' : addToCartButtonLabel,
// //     'add_to_cart_button_link' : addToCartButtonLink,
// //     'allow_delivery_date' : allowDeliveryDate,
// //     'stock_indicator_id' : stockIndicatorId,
// //     'products_vendor_code' : productsVendorCode,
// //     'descriptionTabs' : descriptionTabs?.map((e) => e.toJson()).toList(),
// //     'productFiles' : productFiles?.map((e) => e.toJson()).toList(),
// //     'inStock' : inStock,
// //     'inStockIcon' : inStockIcon,
// //     'stockIndicator' : stockIndicator,
// //     'stockDeliveryTime' : stockDeliveryTime,
// //     'priceExclTax' : priceExclTax,
// //     'final_price_incl_tax' : finalPriceInclTax,
// //     'slug' : slug,
// //     'ratingCount' : ratingCount,
// //     'ratingValue' : ratingValue,
// //     'review' : review?.toJson(),
// //     'rating_max_score' : ratingMaxScore,
// //     'rating_stars' : ratingStars,
// //     'wishlist' : wishlist,
// //     'usp' : usp,
// //     'specifications' : specifications,
// //     'faq' : faq,
// //     'media' : media,
// //     'attributes' : attributes1?.map((e) => e.toJson()).toList(),
// //     'customLabel' : customLabel,
// //     'subProducts' : subProducts,
// //     'order_unit_id' : orderUnitId,
// //     'order_unit_name' : orderUnitName,
// //     'products_sku' : productsSku,
// //     'indexingAllowed' : indexingAllowed,
// //     'simpleProductVariations' : simpleProductVariations?.toJson(),
// //     'stockClass' : stockClass,
// //     'stock_indicator_alt_title' : stockIndicatorAltTitle,
// //     'stock_indicator_alt_description' : stockIndicatorAltDescription,
// //     'stock_indicator_alt_start_time' : stockIndicatorAltStartTime,
// //     'stock_indicator_alt_end_time' : stockIndicatorAltEndTime,
// //     'metaData' : metaData?.toJson(),
// //     'images' : images,
// //     'imageTitles' : imageTitles
// //   };
// // }
// //
// // class CrumbPath {
// //   final String? id;
// //   final String? name;
// //   final String? slug;
// //
// //   CrumbPath({
// //     this.id,
// //     this.name,
// //     this.slug,
// //   });
// //
// //   CrumbPath copyWith({
// //     String? id,
// //     String? name,
// //     String? slug,
// //   }) {
// //     return CrumbPath(
// //       id: id ?? this.id,
// //       name: name ?? this.name,
// //       slug: slug ?? this.slug,
// //     );
// //   }
// //
// //   CrumbPath.fromJson(Map<String, dynamic> json)
// //       : id = json['id'] as String?,
// //         name = json['name'] as String?,
// //         slug = json['slug'] as String?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'id' : id,
// //     'name' : name,
// //     'slug' : slug
// //   };
// // }
// //
// // class DescriptionTabs {
// //   final String? title;
// //   final String? content;
// //
// //   DescriptionTabs({
// //     this.title,
// //     this.content,
// //   });
// //
// //   DescriptionTabs copyWith({
// //     String? title,
// //     String? content,
// //   }) {
// //     return DescriptionTabs(
// //       title: title ?? this.title,
// //       content: content ?? this.content,
// //     );
// //   }
// //
// //   DescriptionTabs.fromJson(Map<String, dynamic> json)
// //       : title = json['title'] as String?,
// //         content = json['content'] as String?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'title' : title,
// //     'content' : content
// //   };
// // }
// //
// // class ProductFiles {
// //   final String? faIcon;
// //   final String? fileName;
// //   final String? fileLocation;
// //   final String? fileSize;
// //
// //   ProductFiles({
// //     this.faIcon,
// //     this.fileName,
// //     this.fileLocation,
// //     this.fileSize,
// //   });
// //
// //   ProductFiles copyWith({
// //     String? faIcon,
// //     String? fileName,
// //     String? fileLocation,
// //     String? fileSize,
// //   }) {
// //     return ProductFiles(
// //       faIcon: faIcon ?? this.faIcon,
// //       fileName: fileName ?? this.fileName,
// //       fileLocation: fileLocation ?? this.fileLocation,
// //       fileSize: fileSize ?? this.fileSize,
// //     );
// //   }
// //
// //   ProductFiles.fromJson(Map<String, dynamic> json)
// //       : faIcon = json['faIcon'] as String?,
// //         fileName = json['fileName'] as String?,
// //         fileLocation = json['fileLocation'] as String?,
// //         fileSize = json['fileSize'] as String?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'faIcon' : faIcon,
// //     'fileName' : fileName,
// //     'fileLocation' : fileLocation,
// //     'fileSize' : fileSize
// //   };
// // }
// //
// // class Review {
// //   final String? reviewAuthor;
// //   final String? createdAt;
// //   final String? reviewContent;
// //   final String? reviewTitle;
// //   final String? ratingScore;
// //   final String? ratingMaxScore;
// //   final dynamic reviewImages;
// //   final String? ratingStars;
// //
// //   Review({
// //     this.reviewAuthor,
// //     this.createdAt,
// //     this.reviewContent,
// //     this.reviewTitle,
// //     this.ratingScore,
// //     this.ratingMaxScore,
// //     this.reviewImages,
// //     this.ratingStars,
// //   });
// //
// //   Review copyWith({
// //     String? reviewAuthor,
// //     String? createdAt,
// //     String? reviewContent,
// //     String? reviewTitle,
// //     String? ratingScore,
// //     String? ratingMaxScore,
// //     dynamic reviewImages,
// //     String? ratingStars,
// //   }) {
// //     return Review(
// //       reviewAuthor: reviewAuthor ?? this.reviewAuthor,
// //       createdAt: createdAt ?? this.createdAt,
// //       reviewContent: reviewContent ?? this.reviewContent,
// //       reviewTitle: reviewTitle ?? this.reviewTitle,
// //       ratingScore: ratingScore ?? this.ratingScore,
// //       ratingMaxScore: ratingMaxScore ?? this.ratingMaxScore,
// //       reviewImages: reviewImages ?? this.reviewImages,
// //       ratingStars: ratingStars ?? this.ratingStars,
// //     );
// //   }
// //
// //   Review.fromJson(Map<String, dynamic> json)
// //       : reviewAuthor = json['reviewAuthor'] as String?,
// //         createdAt = json['createdAt'] as String?,
// //         reviewContent = json['reviewContent'] as String?,
// //         reviewTitle = json['reviewTitle'] as String?,
// //         ratingScore = json['ratingScore'] as String?,
// //         ratingMaxScore = json['ratingMaxScore'] as String?,
// //         reviewImages = json['reviewImages'],
// //         ratingStars = json['rating_stars'] as String?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'reviewAuthor' : reviewAuthor,
// //     'createdAt' : createdAt,
// //     'reviewContent' : reviewContent,
// //     'reviewTitle' : reviewTitle,
// //     'ratingScore' : ratingScore,
// //     'ratingMaxScore' : ratingMaxScore,
// //     'reviewImages' : reviewImages,
// //     'rating_stars' : ratingStars
// //   };
// // }
// //
// // class Attributes1 {
// //   final String? groupName;
// //   final List<Attributes>? attributes;
// //
// //   Attributes1({
// //     this.groupName,
// //     this.attributes,
// //   });
// //
// //   Attributes1 copyWith({
// //     String? groupName,
// //     List<Attributes>? attributes,
// //   }) {
// //     return Attributes1(
// //       groupName: groupName ?? this.groupName,
// //       attributes: attributes ?? this.attributes,
// //     );
// //   }
// //
// //   Attributes1.fromJson(Map<String, dynamic> json)
// //       : groupName = json['groupName'] as String?,
// //         attributes = (json['attributes'] as List?)?.map((dynamic e) => Attributes.fromJson(e as Map<String,dynamic>)).toList();
// //
// //   Map<String, dynamic> toJson() => {
// //     'groupName' : groupName,
// //     'attributes' : attributes?.map((e) => e.toJson()).toList()
// //   };
// // }
// //
// // class Attributes {
// //   final String? required;
// //   final String? id;
// //   final String? name;
// //   final dynamic description;
// //   final String? type;
// //   final String? hide;
// //   final dynamic groupName;
// //   final List<Values>? values;
// //
// //   Attributes({
// //     this.required,
// //     this.id,
// //     this.name,
// //     this.description,
// //     this.type,
// //     this.hide,
// //     this.groupName,
// //     this.values,
// //   });
// //
// //   Attributes copyWith({
// //     String? required,
// //     String? id,
// //     String? name,
// //     dynamic description,
// //     String? type,
// //     String? hide,
// //     dynamic groupName,
// //     List<Values>? values,
// //   }) {
// //     return Attributes(
// //       required: required ?? this.required,
// //       id: id ?? this.id,
// //       name: name ?? this.name,
// //       description: description ?? this.description,
// //       type: type ?? this.type,
// //       hide: hide ?? this.hide,
// //       groupName: groupName ?? this.groupName,
// //       values: values ?? this.values,
// //     );
// //   }
// //
// //   Attributes.fromJson(Map<String, dynamic> json)
// //       : required = json['required'] as String?,
// //         id = json['id'] as String?,
// //         name = json['name'] as String?,
// //         description = json['description'],
// //         type = json['type'] as String?,
// //         hide = json['hide'] as String?,
// //         groupName = json['groupName'],
// //         values = (json['values'] as List?)?.map((dynamic e) => Values.fromJson(e as Map<String,dynamic>)).toList();
// //
// //   Map<String, dynamic> toJson() => {
// //     'required' : required,
// //     'id' : id,
// //     'name' : name,
// //     'description' : description,
// //     'type' : type,
// //     'hide' : hide,
// //     'groupName' : groupName,
// //     'values' : values?.map((e) => e.toJson()).toList()
// //   };
// // }
// //
// // class Values {
// //   final String? id;
// //   final String? name;
// //   final int? price;
// //   final String? valueId;
// //   final String? pricePrefix;
// //   final dynamic description;
// //   final String? priceExclTax;
// //
// //   Values({
// //     this.id,
// //     this.name,
// //     this.price,
// //     this.valueId,
// //     this.pricePrefix,
// //     this.description,
// //     this.priceExclTax,
// //   });
// //
// //   Values copyWith({
// //     String? id,
// //     String? name,
// //     int? price,
// //     String? valueId,
// //     String? pricePrefix,
// //     dynamic description,
// //     String? priceExclTax,
// //   }) {
// //     return Values(
// //       id: id ?? this.id,
// //       name: name ?? this.name,
// //       price: price ?? this.price,
// //       valueId: valueId ?? this.valueId,
// //       pricePrefix: pricePrefix ?? this.pricePrefix,
// //       description: description ?? this.description,
// //       priceExclTax: priceExclTax ?? this.priceExclTax,
// //     );
// //   }
// //
// //   Values.fromJson(Map<String, dynamic> json)
// //       : id = json['id'] as String?,
// //         name = json['name'] as String?,
// //         price = json['price'] as int?,
// //         valueId = json['valueId'] as String?,
// //         pricePrefix = json['pricePrefix'] as String?,
// //         description = json['description'],
// //         priceExclTax = json['priceExclTax'] as String?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'id' : id,
// //     'name' : name,
// //     'price' : price,
// //     'valueId' : valueId,
// //     'pricePrefix' : pricePrefix,
// //     'description' : description,
// //     'priceExclTax' : priceExclTax
// //   };
// // }
// //
// // class SimpleProductVariations {
// //   final String? label;
// //   final List<dynamic>? data;
// //
// //   SimpleProductVariations({
// //     this.label,
// //     this.data,
// //   });
// //
// //   SimpleProductVariations copyWith({
// //     String? label,
// //     List<dynamic>? data,
// //   }) {
// //     return SimpleProductVariations(
// //       label: label ?? this.label,
// //       data: data ?? this.data,
// //     );
// //   }
// //
// //   SimpleProductVariations.fromJson(Map<String, dynamic> json)
// //       : label = json['label'] as String?,
// //         data = json['data'] as List?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'label' : label,
// //     'data' : data
// //   };
// // }
// //
// // class MetaData {
// //   final String? title;
// //   final String? robots;
// //   final String? keywords;
// //   final String? description;
// //   final String? canonicalUrl;
// //   final String? image;
// //   final int? imageWidth;
// //   final int? imageHeight;
// //
// //   MetaData({
// //     this.title,
// //     this.robots,
// //     this.keywords,
// //     this.description,
// //     this.canonicalUrl,
// //     this.image,
// //     this.imageWidth,
// //     this.imageHeight,
// //   });
// //
// //   MetaData copyWith({
// //     String? title,
// //     String? robots,
// //     String? keywords,
// //     String? description,
// //     String? canonicalUrl,
// //     String? image,
// //     int? imageWidth,
// //     int? imageHeight,
// //   }) {
// //     return MetaData(
// //       title: title ?? this.title,
// //       robots: robots ?? this.robots,
// //       keywords: keywords ?? this.keywords,
// //       description: description ?? this.description,
// //       canonicalUrl: canonicalUrl ?? this.canonicalUrl,
// //       image: image ?? this.image,
// //       imageWidth: imageWidth ?? this.imageWidth,
// //       imageHeight: imageHeight ?? this.imageHeight,
// //     );
// //   }
// //
// //   MetaData.fromJson(Map<String, dynamic> json)
// //       : title = json['title'] as String?,
// //         robots = json['robots'] as String?,
// //         keywords = json['keywords'] as String?,
// //         description = json['description'] as String?,
// //         canonicalUrl = json['canonicalUrl'] as String?,
// //         image = json['image'] as String?,
// //         imageWidth = json['imageWidth'] as int?,
// //         imageHeight = json['imageHeight'] as int?;
// //
// //   Map<String, dynamic> toJson() => {
// //     'title' : title,
// //     'robots' : robots,
// //     'keywords' : keywords,
// //     'description' : description,
// //     'canonicalUrl' : canonicalUrl,
// //     'image' : image,
// //     'imageWidth' : imageWidth,
// //     'imageHeight' : imageHeight
// //   };
// // }
//
//
//
//
//
// class ProductDetailModel {
//   final List<CrumbPath>? crumbPath;
//   final String? categoryId;
//   final String? categoryName;
//   final String? manufacturerId;
//   final String? manufacturerName;
//   final String? maxQty;
//   final int? minQty;
//   final String? id;
//   final String? productsDateAvailable;
//   final String? description;
//   final String? condition;
//   final String? productsViewed;
//   final String? productsImage3;
//   final dynamic productsImageTitle3;
//   final String? productsImage4;
//   final dynamic productsImageTitle4;
//   final String? model;
//   final String? multiplier;
//   final String? name;
//   final dynamic oldPrice;
//   final dynamic price;
//   final String? staffelPrice;
//   final double? taxRate;
//   final String? shortDescription;
//   final String? eanCode;
//   final String? sku;
//   final String? productsDateAdded;
//   final String? lastModifiedAt;
//   final String? active;
//   final String? title;
//   final String? productsUrl;
//   final String? productsQuantity;
//   final String? visibleInProductsListingPage;
//   final String? visibleInProductsDetailPage;
//   final String? visibleInProductFeed;
//   final String? productIsOrderable;
//   final String? stockIndicatorClassName;
//   final String? stockIndicatorTitle;
//   final String? stockIndicatorDescription;
//   final String? addToCartButtonLabel;
//   final String? addToCartButtonLink;
//   final String? allowDeliveryDate;
//   final String? stockIndicatorId;
//   final String? productsVendorCode;
//   final List<DescriptionTabs>? descriptionTabs;
//   final int? inStock;
//   final int? inStockIcon;
//   final String? stockIndicator;
//   final String? stockDeliveryTime;
//   final double? priceExclTax;
//   final dynamic finalPriceInclTax;
//   final String? slug;
//   final int? ratingCount;
//   final int? ratingValue;
//   final Review? review;
//   final String? ratingMaxScore;
//   final int? ratingStars;
//   final bool? wishlist;
//   final String? usp;
//   final List<dynamic>? specifications;
//   final List<dynamic>? faq;
//   final List<dynamic>? media;
//   final dynamic attributes;
//   final List<dynamic>? customLabel;
//   final List<dynamic>? subProducts;
//   final dynamic orderUnitId;
//   final dynamic orderUnitName;
//   final String? productsSku;
//   final bool? indexingAllowed;
//   final SimpleProductVariations? simpleProductVariations;
//   final String? stockClass;
//   final String? stockIndicatorAltTitle;
//   final String? stockIndicatorAltDescription;
//   final String? stockIndicatorAltStartTime;
//   final String? stockIndicatorAltEndTime;
//   final MetaData? metaData;
//   final List<String>? images;
//   final List<dynamic>? imageTitles;
//
//   ProductDetailModel({
//     this.crumbPath,
//     this.categoryId,
//     this.categoryName,
//     this.manufacturerId,
//     this.manufacturerName,
//     this.maxQty,
//     this.minQty,
//     this.id,
//     this.productsDateAvailable,
//     this.description,
//     this.condition,
//     this.productsViewed,
//     this.productsImage3,
//     this.productsImageTitle3,
//     this.productsImage4,
//     this.productsImageTitle4,
//     this.model,
//     this.multiplier,
//     this.name,
//     this.oldPrice,
//     this.price,
//     this.staffelPrice,
//     this.taxRate,
//     this.shortDescription,
//     this.eanCode,
//     this.sku,
//     this.productsDateAdded,
//     this.lastModifiedAt,
//     this.active,
//     this.title,
//     this.productsUrl,
//     this.productsQuantity,
//     this.visibleInProductsListingPage,
//     this.visibleInProductsDetailPage,
//     this.visibleInProductFeed,
//     this.productIsOrderable,
//     this.stockIndicatorClassName,
//     this.stockIndicatorTitle,
//     this.stockIndicatorDescription,
//     this.addToCartButtonLabel,
//     this.addToCartButtonLink,
//     this.allowDeliveryDate,
//     this.stockIndicatorId,
//     this.productsVendorCode,
//     this.descriptionTabs,
//     this.inStock,
//     this.inStockIcon,
//     this.stockIndicator,
//     this.stockDeliveryTime,
//     this.priceExclTax,
//     this.finalPriceInclTax,
//     this.slug,
//     this.ratingCount,
//     this.ratingValue,
//     this.review,
//     this.ratingMaxScore,
//     this.ratingStars,
//     this.wishlist,
//     this.usp,
//     this.specifications,
//     this.faq,
//     this.media,
//     this.attributes,
//     this.customLabel,
//     this.subProducts,
//     this.orderUnitId,
//     this.orderUnitName,
//     this.productsSku,
//     this.indexingAllowed,
//     this.simpleProductVariations,
//     this.stockClass,
//     this.stockIndicatorAltTitle,
//     this.stockIndicatorAltDescription,
//     this.stockIndicatorAltStartTime,
//     this.stockIndicatorAltEndTime,
//     this.metaData,
//     this.images,
//     this.imageTitles,
//   });
//
//   ProductDetailModel copyWith({
//     List<CrumbPath>? crumbPath,
//     String? categoryId,
//     String? categoryName,
//     String? manufacturerId,
//     String? manufacturerName,
//     String? maxQty,
//     int? minQty,
//     String? id,
//     String? productsDateAvailable,
//     String? description,
//     String? condition,
//     String? productsViewed,
//     String? productsImage3,
//     dynamic productsImageTitle3,
//     String? productsImage4,
//     dynamic productsImageTitle4,
//     String? model,
//     String? multiplier,
//     String? name,
//     String? oldPrice,
//     int? price,
//     String? staffelPrice,
//     double? taxRate,
//     String? shortDescription,
//     String? eanCode,
//     String? sku,
//     String? productsDateAdded,
//     String? lastModifiedAt,
//     String? active,
//     String? title,
//     String? productsUrl,
//     String? productsQuantity,
//     String? visibleInProductsListingPage,
//     String? visibleInProductsDetailPage,
//     String? visibleInProductFeed,
//     String? productIsOrderable,
//     String? stockIndicatorClassName,
//     String? stockIndicatorTitle,
//     String? stockIndicatorDescription,
//     String? addToCartButtonLabel,
//     String? addToCartButtonLink,
//     String? allowDeliveryDate,
//     String? stockIndicatorId,
//     String? productsVendorCode,
//     List<DescriptionTabs>? descriptionTabs,
//     int? inStock,
//     int? inStockIcon,
//     String? stockIndicator,
//     String? stockDeliveryTime,
//     double? priceExclTax,
//     int? finalPriceInclTax,
//     String? slug,
//     int? ratingCount,
//     int? ratingValue,
//     Review? review,
//     String? ratingMaxScore,
//     int? ratingStars,
//     bool? wishlist,
//     String? usp,
//     List<dynamic>? specifications,
//     List<dynamic>? faq,
//     List<dynamic>? media,
//     Attributes? attributes,
//     List<dynamic>? customLabel,
//     List<dynamic>? subProducts,
//     dynamic orderUnitId,
//     dynamic orderUnitName,
//     String? productsSku,
//     bool? indexingAllowed,
//     SimpleProductVariations? simpleProductVariations,
//     String? stockClass,
//     String? stockIndicatorAltTitle,
//     String? stockIndicatorAltDescription,
//     String? stockIndicatorAltStartTime,
//     String? stockIndicatorAltEndTime,
//     MetaData? metaData,
//     List<String>? images,
//     List<dynamic>? imageTitles,
//   }) {
//     return ProductDetailModel(
//       crumbPath: crumbPath ?? this.crumbPath,
//       categoryId: categoryId ?? this.categoryId,
//       categoryName: categoryName ?? this.categoryName,
//       manufacturerId: manufacturerId ?? this.manufacturerId,
//       manufacturerName: manufacturerName ?? this.manufacturerName,
//       maxQty: maxQty ?? this.maxQty,
//       minQty: minQty ?? this.minQty,
//       id: id ?? this.id,
//       productsDateAvailable: productsDateAvailable ?? this.productsDateAvailable,
//       description: description ?? this.description,
//       condition: condition ?? this.condition,
//       productsViewed: productsViewed ?? this.productsViewed,
//       productsImage3: productsImage3 ?? this.productsImage3,
//       productsImageTitle3: productsImageTitle3 ?? this.productsImageTitle3,
//       productsImage4: productsImage4 ?? this.productsImage4,
//       productsImageTitle4: productsImageTitle4 ?? this.productsImageTitle4,
//       model: model ?? this.model,
//       multiplier: multiplier ?? this.multiplier,
//       name: name ?? this.name,
//       oldPrice: oldPrice ?? this.oldPrice,
//       price: price ?? this.price,
//       staffelPrice: staffelPrice ?? this.staffelPrice,
//       taxRate: taxRate ?? this.taxRate,
//       shortDescription: shortDescription ?? this.shortDescription,
//       eanCode: eanCode ?? this.eanCode,
//       sku: sku ?? this.sku,
//       productsDateAdded: productsDateAdded ?? this.productsDateAdded,
//       lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
//       active: active ?? this.active,
//       title: title ?? this.title,
//       productsUrl: productsUrl ?? this.productsUrl,
//       productsQuantity: productsQuantity ?? this.productsQuantity,
//       visibleInProductsListingPage: visibleInProductsListingPage ?? this.visibleInProductsListingPage,
//       visibleInProductsDetailPage: visibleInProductsDetailPage ?? this.visibleInProductsDetailPage,
//       visibleInProductFeed: visibleInProductFeed ?? this.visibleInProductFeed,
//       productIsOrderable: productIsOrderable ?? this.productIsOrderable,
//       stockIndicatorClassName: stockIndicatorClassName ?? this.stockIndicatorClassName,
//       stockIndicatorTitle: stockIndicatorTitle ?? this.stockIndicatorTitle,
//       stockIndicatorDescription: stockIndicatorDescription ?? this.stockIndicatorDescription,
//       addToCartButtonLabel: addToCartButtonLabel ?? this.addToCartButtonLabel,
//       addToCartButtonLink: addToCartButtonLink ?? this.addToCartButtonLink,
//       allowDeliveryDate: allowDeliveryDate ?? this.allowDeliveryDate,
//       stockIndicatorId: stockIndicatorId ?? this.stockIndicatorId,
//       productsVendorCode: productsVendorCode ?? this.productsVendorCode,
//       descriptionTabs: descriptionTabs ?? this.descriptionTabs,
//       inStock: inStock ?? this.inStock,
//       inStockIcon: inStockIcon ?? this.inStockIcon,
//       stockIndicator: stockIndicator ?? this.stockIndicator,
//       stockDeliveryTime: stockDeliveryTime ?? this.stockDeliveryTime,
//       priceExclTax: priceExclTax ?? this.priceExclTax,
//       finalPriceInclTax: finalPriceInclTax ?? this.finalPriceInclTax,
//       slug: slug ?? this.slug,
//       ratingCount: ratingCount ?? this.ratingCount,
//       ratingValue: ratingValue ?? this.ratingValue,
//       review: review ?? this.review,
//       ratingMaxScore: ratingMaxScore ?? this.ratingMaxScore,
//       ratingStars: ratingStars ?? this.ratingStars,
//       wishlist: wishlist ?? this.wishlist,
//       usp: usp ?? this.usp,
//       specifications: specifications ?? this.specifications,
//       faq: faq ?? this.faq,
//       media: media ?? this.media,
//       attributes: attributes ?? this.attributes,
//       customLabel: customLabel ?? this.customLabel,
//       subProducts: subProducts ?? this.subProducts,
//       orderUnitId: orderUnitId ?? this.orderUnitId,
//       orderUnitName: orderUnitName ?? this.orderUnitName,
//       productsSku: productsSku ?? this.productsSku,
//       indexingAllowed: indexingAllowed ?? this.indexingAllowed,
//       simpleProductVariations: simpleProductVariations ?? this.simpleProductVariations,
//       stockClass: stockClass ?? this.stockClass,
//       stockIndicatorAltTitle: stockIndicatorAltTitle ?? this.stockIndicatorAltTitle,
//       stockIndicatorAltDescription: stockIndicatorAltDescription ?? this.stockIndicatorAltDescription,
//       stockIndicatorAltStartTime: stockIndicatorAltStartTime ?? this.stockIndicatorAltStartTime,
//       stockIndicatorAltEndTime: stockIndicatorAltEndTime ?? this.stockIndicatorAltEndTime,
//       metaData: metaData ?? this.metaData,
//       images: images ?? this.images,
//       imageTitles: imageTitles ?? this.imageTitles,
//     );
//   }
//
//   ProductDetailModel.fromJson(Map<String, dynamic> json)
//       : crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList(),
//         categoryId = json['categoryId'] as String?,
//         categoryName = json['categoryName'] as String?,
//         manufacturerId = json['manufacturerId'] as String?,
//         manufacturerName = json['manufacturerName'] as String?,
//         maxQty = json['maxQty'] as String?,
//         minQty = json['minQty'] as int?,
//         id = json['id'] as String?,
//         productsDateAvailable = json['products_date_available'] as String?,
//         description = json['description'] as String?,
//         condition = json['condition'] as String?,
//         productsViewed = json['products_viewed'] as String?,
//         productsImage3 = json['products_image3'] as String?,
//         productsImageTitle3 = json['products_image_title3'],
//         productsImage4 = json['products_image4'] as String?,
//         productsImageTitle4 = json['products_image_title4'],
//         model = json['model'] as String?,
//         multiplier = json['multiplier'] as String?,
//         name = json['name'] as String?,
//         oldPrice = json['oldPrice'] ,
//         price = json['price'] ,
//         staffelPrice = json['staffel_price'] as String?,
//         taxRate = json['tax_rate'] as double?,
//         shortDescription = json['shortDescription'] as String?,
//         eanCode = json['eanCode'] as String?,
//         sku = json['sku'] as String?,
//         productsDateAdded = json['products_date_added'] as String?,
//         lastModifiedAt = json['lastModifiedAt'] as String?,
//         active = json['active'] as String?,
//         title = json['title'] as String?,
//         productsUrl = json['products_url'] as String?,
//         productsQuantity = json['products_quantity'] as String?,
//         visibleInProductsListingPage = json['visible_in_products_listing_page'] as String?,
//         visibleInProductsDetailPage = json['visible_in_products_detail_page'] as String?,
//         visibleInProductFeed = json['visible_in_product_feed'] as String?,
//         productIsOrderable = json['product_is_orderable'] as String?,
//         stockIndicatorClassName = json['stock_indicator_class_name'] as String?,
//         stockIndicatorTitle = json['stock_indicator_title'] as String?,
//         stockIndicatorDescription = json['stock_indicator_description'] as String?,
//         addToCartButtonLabel = json['add_to_cart_button_label'] as String?,
//         addToCartButtonLink = json['add_to_cart_button_link'] as String?,
//         allowDeliveryDate = json['allow_delivery_date'] as String?,
//         stockIndicatorId = json['stock_indicator_id'] as String?,
//         productsVendorCode = json['products_vendor_code'] as String?,
//         descriptionTabs = (json['descriptionTabs'] as List?)?.map((dynamic e) => DescriptionTabs.fromJson(e as Map<String,dynamic>)).toList(),
//         inStock = json['inStock'] as int?,
//         inStockIcon = json['inStockIcon'] as int?,
//         stockIndicator = json['stockIndicator'] as String?,
//         stockDeliveryTime = json['stockDeliveryTime'] as String?,
//         priceExclTax = json['priceExclTax'] as double?,
//         finalPriceInclTax = json['final_price_incl_tax'] ,
//         slug = json['slug'] as String?,
//         ratingCount = json['ratingCount'] as int?,
//         ratingValue = json['ratingValue'] as int?,
//         review = (json['review'] as Map<String,dynamic>?) != null ? Review.fromJson(json['review'] as Map<String,dynamic>) : null,
//         ratingMaxScore = json['rating_max_score'] as String?,
//         ratingStars = json['rating_stars'] as int?,
//         wishlist = json['wishlist'] as bool?,
//         usp = json['usp'] as String?,
//         specifications = json['specifications'] as List?,
//         faq = json['faq'] as List?,
//         media = json['media'] as List?,
//         attributes = (json['attributes'] as Map<String,dynamic>?) != null ? Attributes.fromJson(json['attributes'] as Map<String,dynamic>) : null,
//         customLabel = json['customLabel'] as List?,
//         subProducts = json['subProducts'] as List?,
//         orderUnitId = json['order_unit_id'],
//         orderUnitName = json['order_unit_name'],
//         productsSku = json['products_sku'] as String?,
//         indexingAllowed = json['indexingAllowed'] as bool?,
//         simpleProductVariations = (json['simpleProductVariations'] as Map<String,dynamic>?) != null ? SimpleProductVariations.fromJson(json['simpleProductVariations'] as Map<String,dynamic>) : null,
//         stockClass = json['stockClass'] as String?,
//         stockIndicatorAltTitle = json['stock_indicator_alt_title'] as String?,
//         stockIndicatorAltDescription = json['stock_indicator_alt_description'] as String?,
//         stockIndicatorAltStartTime = json['stock_indicator_alt_start_time'] as String?,
//         stockIndicatorAltEndTime = json['stock_indicator_alt_end_time'] as String?,
//         metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null,
//         images = (json['images'] as List?)?.map((dynamic e) => e as String).toList(),
//         imageTitles = json['imageTitles'] as List?;
//
//   Map<String, dynamic> toJson() => {
//     'crumbPath' : crumbPath?.map((e) => e.toJson()).toList(),
//     'categoryId' : categoryId,
//     'categoryName' : categoryName,
//     'manufacturerId' : manufacturerId,
//     'manufacturerName' : manufacturerName,
//     'maxQty' : maxQty,
//     'minQty' : minQty,
//     'id' : id,
//     'products_date_available' : productsDateAvailable,
//     'description' : description,
//     'condition' : condition,
//     'products_viewed' : productsViewed,
//     'products_image3' : productsImage3,
//     'products_image_title3' : productsImageTitle3,
//     'products_image4' : productsImage4,
//     'products_image_title4' : productsImageTitle4,
//     'model' : model,
//     'multiplier' : multiplier,
//     'name' : name,
//     'oldPrice' : oldPrice,
//     'price' : price,
//     'staffel_price' : staffelPrice,
//     'tax_rate' : taxRate,
//     'shortDescription' : shortDescription,
//     'eanCode' : eanCode,
//     'sku' : sku,
//     'products_date_added' : productsDateAdded,
//     'lastModifiedAt' : lastModifiedAt,
//     'active' : active,
//     'title' : title,
//     'products_url' : productsUrl,
//     'products_quantity' : productsQuantity,
//     'visible_in_products_listing_page' : visibleInProductsListingPage,
//     'visible_in_products_detail_page' : visibleInProductsDetailPage,
//     'visible_in_product_feed' : visibleInProductFeed,
//     'product_is_orderable' : productIsOrderable,
//     'stock_indicator_class_name' : stockIndicatorClassName,
//     'stock_indicator_title' : stockIndicatorTitle,
//     'stock_indicator_description' : stockIndicatorDescription,
//     'add_to_cart_button_label' : addToCartButtonLabel,
//     'add_to_cart_button_link' : addToCartButtonLink,
//     'allow_delivery_date' : allowDeliveryDate,
//     'stock_indicator_id' : stockIndicatorId,
//     'products_vendor_code' : productsVendorCode,
//     'descriptionTabs' : descriptionTabs?.map((e) => e.toJson()).toList(),
//     'inStock' : inStock,
//     'inStockIcon' : inStockIcon,
//     'stockIndicator' : stockIndicator,
//     'stockDeliveryTime' : stockDeliveryTime,
//     'priceExclTax' : priceExclTax,
//     'final_price_incl_tax' : finalPriceInclTax,
//     'slug' : slug,
//     'ratingCount' : ratingCount,
//     'ratingValue' : ratingValue,
//     'review' : review?.toJson(),
//     'rating_max_score' : ratingMaxScore,
//     'rating_stars' : ratingStars,
//     'wishlist' : wishlist,
//     'usp' : usp,
//     'specifications' : specifications,
//     'faq' : faq,
//     'media' : media,
//     'attributes' : attributes?.toJson(),
//     'customLabel' : customLabel,
//     'subProducts' : subProducts,
//     'order_unit_id' : orderUnitId,
//     'order_unit_name' : orderUnitName,
//     'products_sku' : productsSku,
//     'indexingAllowed' : indexingAllowed,
//     'simpleProductVariations' : simpleProductVariations?.toJson(),
//     'stockClass' : stockClass,
//     'stock_indicator_alt_title' : stockIndicatorAltTitle,
//     'stock_indicator_alt_description' : stockIndicatorAltDescription,
//     'stock_indicator_alt_start_time' : stockIndicatorAltStartTime,
//     'stock_indicator_alt_end_time' : stockIndicatorAltEndTime,
//     'metaData' : metaData?.toJson(),
//     'images' : images,
//     'imageTitles' : imageTitles
//   };
// }
//
// class CrumbPath {
//   final String? id;
//   final String? name;
//   final String? slug;
//
//   CrumbPath({
//     this.id,
//     this.name,
//     this.slug,
//   });
//
//   CrumbPath copyWith({
//     String? id,
//     String? name,
//     String? slug,
//   }) {
//     return CrumbPath(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       slug: slug ?? this.slug,
//     );
//   }
//
//   CrumbPath.fromJson(Map<String, dynamic> json)
//       : id = json['id'] as String?,
//         name = json['name'] as String?,
//         slug = json['slug'] as String?;
//
//   Map<String, dynamic> toJson() => {
//     'id' : id,
//     'name' : name,
//     'slug' : slug
//   };
// }
//
// class DescriptionTabs {
//   final String? title;
//   final String? content;
//
//   DescriptionTabs({
//     this.title,
//     this.content,
//   });
//
//   DescriptionTabs copyWith({
//     String? title,
//     String? content,
//   }) {
//     return DescriptionTabs(
//       title: title ?? this.title,
//       content: content ?? this.content,
//     );
//   }
//
//   DescriptionTabs.fromJson(Map<String, dynamic> json)
//       : title = json['title'] as String?,
//         content = json['content'] as String?;
//
//   Map<String, dynamic> toJson() => {
//     'title' : title,
//     'content' : content
//   };
// }
//
// class Review {
//
//
// //   Review({}
// // );
//
// // Review copyWith({
// // // {fieldType} {fieldName},
// // }) {
// // return Review(
// // // {fieldName}: {fieldName} ?? this.{fieldName},
// // );
// // }
//
// Review.fromJson(Map<String, dynamic> json)
// ;
//
// Map<String, dynamic> toJson() => {
//
// };
// }
//
// class Attributes {
//
//
// //   Attributes({
// //
// // });
//
// // Attributes copyWith({
// // // {fieldType} {fieldName},
// // }) {
// // return Attributes(
// // {fieldName}: {fieldName} ?? this.{fieldName},
// // );
// // }
//
// Attributes.fromJson(Map<String, dynamic> json) ;
//
// Map<String, dynamic> toJson() => {
//
// };
// }
//
// class SimpleProductVariations {
//   final String? label;
//   final List<dynamic>? data;
//
//   SimpleProductVariations({
//     this.label,
//     this.data,
//   });
//
//   SimpleProductVariations copyWith({
//     String? label,
//     List<dynamic>? data,
//   }) {
//     return SimpleProductVariations(
//       label: label ?? this.label,
//       data: data ?? this.data,
//     );
//   }
//
//   SimpleProductVariations.fromJson(Map<String, dynamic> json)
//       : label = json['label'] as String?,
//         data = json['data'] as List?;
//
//   Map<String, dynamic> toJson() => {
//     'label' : label,
//     'data' : data
//   };
// }
//
// class MetaData {
//   final String? title;
//   final String? robots;
//   final String? keywords;
//   final String? description;
//   final String? canonicalUrl;
//   final String? image;
//   final int? imageWidth;
//   final int? imageHeight;
//
//   MetaData({
//     this.title,
//     this.robots,
//     this.keywords,
//     this.description,
//     this.canonicalUrl,
//     this.image,
//     this.imageWidth,
//     this.imageHeight,
//   });
//
//   MetaData copyWith({
//     String? title,
//     String? robots,
//     String? keywords,
//     String? description,
//     String? canonicalUrl,
//     String? image,
//     int? imageWidth,
//     int? imageHeight,
//   }) {
//     return MetaData(
//       title: title ?? this.title,
//       robots: robots ?? this.robots,
//       keywords: keywords ?? this.keywords,
//       description: description ?? this.description,
//       canonicalUrl: canonicalUrl ?? this.canonicalUrl,
//       image: image ?? this.image,
//       imageWidth: imageWidth ?? this.imageWidth,
//       imageHeight: imageHeight ?? this.imageHeight,
//     );
//   }
//
//   MetaData.fromJson(Map<String, dynamic> json)
//       : title = json['title'] as String?,
//         robots = json['robots'] as String?,
//         keywords = json['keywords'] as String?,
//         description = json['description'] as String?,
//         canonicalUrl = json['canonicalUrl'] as String?,
//         image = json['image'] as String?,
//         imageWidth = json['imageWidth'] as int?,
//         imageHeight = json['imageHeight'] as int?;
//
//   Map<String, dynamic> toJson() => {
//     'title' : title,
//     'robots' : robots,
//     'keywords' : keywords,
//     'description' : description,
//     'canonicalUrl' : canonicalUrl,
//     'image' : image,
//     'imageWidth' : imageWidth,
//     'imageHeight' : imageHeight
//   };
// }