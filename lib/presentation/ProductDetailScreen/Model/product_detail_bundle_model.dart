class ProductDetailBundleModel {
  List<List1>? list1;
  int? count;
  int? total;
  int? currentPage;
  int? totalPage;

  ProductDetailBundleModel({
    this.list1,
    this.count,
    this.total,
    this.currentPage,
    this.totalPage,
  });

  ProductDetailBundleModel.fromJson(Map<String, dynamic> json) {
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
  dynamic id;
  String? name;
  String? description;
  String? price;
  String? oldPrice;
  String? memberDiscount;
  String? bundleProductMembersDiscountPercentageFractions;
  int? inStock;
  int? setInStockIcon;
  String? stockIndicator;
  String? stockDeliveryTime;
  List<Products>? products;
  List<String>? images;
  List<dynamic>? imageTitles;

  List1({
    this.id,
    this.name,
    this.description,
    this.price,
    this.oldPrice,
    this.memberDiscount,
    this.bundleProductMembersDiscountPercentageFractions,
    this.inStock,
    this.setInStockIcon,
    this.stockIndicator,
    this.stockDeliveryTime,
    this.products,
    this.images,
    this.imageTitles,
  });

  List1.fromJson(Map<String, dynamic> json) {
    id = json['id'] ;
    name = json['name'] as String?;
    description = json['description'] as String?;
    price = json['price'] as String?;
    oldPrice = json['oldPrice'] as String?;
    memberDiscount = json['memberDiscount'] as String?;
    bundleProductMembersDiscountPercentageFractions = json['bundle_product_members_discount_percentage_fractions'] as String?;
    inStock = json['inStock'] as int?;
    setInStockIcon = json['set_in_stock_icon'] as int?;
    stockIndicator = json['stockIndicator'] as String?;
    stockDeliveryTime = json['stockDeliveryTime'] as String?;
    products = (json['products'] as List?)?.map((dynamic e) => Products.fromJson(e as Map<String,dynamic>)).toList();
    images = (json['images'] as List?)?.map((dynamic e) => e as String).toList();
    imageTitles = json['imageTitles'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['description'] = description;
    json['price'] = price;
    json['oldPrice'] = oldPrice;
    json['memberDiscount'] = memberDiscount;
    json['bundle_product_members_discount_percentage_fractions'] = bundleProductMembersDiscountPercentageFractions;
    json['inStock'] = inStock;
    json['set_in_stock_icon'] = setInStockIcon;
    json['stockIndicator'] = stockIndicator;
    json['stockDeliveryTime'] = stockDeliveryTime;
    json['products'] = products?.map((e) => e.toJson()).toList();
    json['images'] = images;
    json['imageTitles'] = imageTitles;
    return json;
  }
}

class Products {
  List<CrumbPath>? crumbPath;
  String? categoryId;
  String? categoryName;
  String? manufacturerId;
  String? manufacturerName;
  String? maxQty;
  String? minQty;
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
  String? vendorCode;
  int? inStock;
  int? inStockIcon;
  String? stockIndicator;
  String? stockDeliveryTime;
  double? priceExclTax;
  String? finalPriceInclTax;
  String? slug;
  String? ratingCount;
  String? ratingValue;
  bool? wishlist;
  List<CustomLabel>? customLabel;
  dynamic productsPriceInclTax;
  String? oldPriceExclTax;
  MetaData? metaData;
  List<String>? images;
  List<dynamic>? imageTitles;

  Products({
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
    this.vendorCode,
    this.inStock,
    this.inStockIcon,
    this.stockIndicator,
    this.stockDeliveryTime,
    this.priceExclTax,
    this.finalPriceInclTax,
    this.slug,
    this.ratingCount,
    this.ratingValue,
    this.wishlist,
    this.customLabel,
    this.productsPriceInclTax,
    this.oldPriceExclTax,
    this.metaData,
    this.images,
    this.imageTitles,
  });

  Products.fromJson(Map<String, dynamic> json) {
    crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList();
    categoryId = json['categoryId'] as String?;
    categoryName = json['categoryName'] as String?;
    manufacturerId = json['manufacturerId'] as String?;
    manufacturerName = json['manufacturerName'] as String?;
    maxQty = json['maxQty'] as String?;
    minQty = json['minQty'] as String?;
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
    vendorCode = json['vendor_code'] as String?;
    inStock = json['inStock'] as int?;
    inStockIcon = json['inStockIcon'] as int?;
    stockIndicator = json['stockIndicator'] as String?;
    stockDeliveryTime = json['stockDeliveryTime'] as String?;
    priceExclTax = json['priceExclTax'] as double?;
    finalPriceInclTax = json['final_price_incl_tax'] as String?;
    slug = json['slug'] as String?;
    ratingCount = json['ratingCount'] as String?;
    ratingValue = json['ratingValue'] as String?;
    wishlist = json['wishlist'] as bool?;
    customLabel = (json['customLabel'] as List?)?.map((dynamic e) => CustomLabel.fromJson(e as Map<String,dynamic>)).toList();
    productsPriceInclTax = json['products_price_incl_tax'] ;
    oldPriceExclTax = json['oldPriceExclTax'] as String?;
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
    json['vendor_code'] = vendorCode;
    json['inStock'] = inStock;
    json['inStockIcon'] = inStockIcon;
    json['stockIndicator'] = stockIndicator;
    json['stockDeliveryTime'] = stockDeliveryTime;
    json['priceExclTax'] = priceExclTax;
    json['final_price_incl_tax'] = finalPriceInclTax;
    json['slug'] = slug;
    json['ratingCount'] = ratingCount;
    json['ratingValue'] = ratingValue;
    json['wishlist'] = wishlist;
    json['customLabel'] = customLabel?.map((e) => e.toJson()).toList();
    json['products_price_incl_tax'] = productsPriceInclTax;
    json['oldPriceExclTax'] = oldPriceExclTax;
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

class CustomLabel {
  String? label;
  String? className;
  String? bgColor;

  CustomLabel({
    this.label,
    this.className,
    this.bgColor,
  });

  CustomLabel.fromJson(Map<String, dynamic> json) {
    label = json['label'] as String?;
    className = json['className'] as String?;
    bgColor = json['bgColor'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['label'] = label;
    json['className'] = className;
    json['bgColor'] = bgColor;
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