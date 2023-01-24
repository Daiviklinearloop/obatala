class ProductModel {
  final List<List1>? list1;
  final int? count;
  final int? total;
  final int? currentPage;
  final dynamic totalPage;

  ProductModel({
    this.list1,
    this.count,
    this.total,
    this.currentPage,
    this.totalPage,
  });

  ProductModel copyWith({
    List<List1>? list1,
    int? count,
    int? total,
    int? currentPage,
    dynamic totalPage,
  }) {
    return ProductModel(
      list1: list1 ?? this.list1,
      count: count ?? this.count,
      total: total ?? this.total,
      currentPage: currentPage ?? this.currentPage,
      totalPage: totalPage ?? this.totalPage,
    );
  }

  ProductModel.fromJson(Map<String, dynamic> json)
      : list1 = (json['list'] as List?)?.map((dynamic e) => List1.fromJson(e as Map<String,dynamic>)).toList(),
        count = json['count'] as int?,
        total = json['total'] as int?,
        currentPage = json['currentPage'] as int?,
        totalPage = json['totalPage'];

  Map<String, dynamic> toJson() => {
    'list' : list1?.map((e) => e.toJson()).toList(),
    'count' : count,
    'total' : total,
    'currentPage' : currentPage,
    'totalPage' : totalPage
  };
}

class List1 {
  final List<CrumbPath>? crumbPath;
  final String? categoryId;
  final String? categoryName;
  final String? manufacturerId;
  final String? manufacturerName;
  final String? maxQty;
  final String? minQty;
  final String? id;
  final String? productsDateAvailable;
  final String? description;
  final String? condition;
  final String? productsViewed;
  final String? productsImage3;
  final dynamic productsImageTitle3;
  final String? productsImage4;
  final dynamic productsImageTitle4;
  final String? model;
  final String? multiplier;
  final String? name;
  final dynamic oldPrice;
  final dynamic price;
  final String? staffelPrice;
  final double? taxRate;
  final String? shortDescription;
  final String? eanCode;
  final String? sku;
  final String? productsDateAdded;
  final String? lastModifiedAt;
  final String? active;
  final String? title;
  final String? productsUrl;
  final String? productsQuantity;
  final String? visibleInProductsListingPage;
  final String? visibleInProductsDetailPage;
  final String? visibleInProductFeed;
  final String? productIsOrderable;
  final String? stockIndicatorClassName;
  final String? stockIndicatorTitle;
  final String? stockIndicatorDescription;
  final String? addToCartButtonLabel;
  final String? addToCartButtonLink;
  final String? allowDeliveryDate;
  final String? stockIndicatorId;
  final String? productsVendorCode;
  final int? inStock;
  final int? inStockIcon;
  final String? stockIndicator;
  final String? stockDeliveryTime;
  final double? priceExclTax;
  final dynamic finalPriceInclTax;
  final String? slug;
  final String? ratingCount;
  final dynamic ratingValue;
  final String? featureHighlight1;
  final String? featureHighlight2;
  final String? featureHighlight3;
  final String? featureHighlight4;
  final bool? wishlist;
  final List<dynamic>? customLabel;
  final bool? hasAttributes;
  final dynamic orderUnitId;
  final dynamic orderUnitName;
  final String? productsSku;
  final String? stockClass;
  final String? stockIndicatorAltTitle;
  final String? stockIndicatorAltDescription;
  final String? stockIndicatorAltStartTime;
  final String? stockIndicatorAltEndTime;
  final MetaData? metaData;
  final List<String>? images;
  final List<dynamic>? imageTitles;

  List1({
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
    this.productsImage3,
    this.productsImageTitle3,
    this.productsImage4,
    this.productsImageTitle4,
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
    this.inStock,
    this.inStockIcon,
    this.stockIndicator,
    this.stockDeliveryTime,
    this.priceExclTax,
    this.finalPriceInclTax,
    this.slug,
    this.ratingCount,
    this.ratingValue,
    this.featureHighlight1,
    this.featureHighlight2,
    this.featureHighlight3,
    this.featureHighlight4,
    this.wishlist,
    this.customLabel,
    this.hasAttributes,
    this.orderUnitId,
    this.orderUnitName,
    this.productsSku,
    this.stockClass,
    this.stockIndicatorAltTitle,
    this.stockIndicatorAltDescription,
    this.stockIndicatorAltStartTime,
    this.stockIndicatorAltEndTime,
    this.metaData,
    this.images,
    this.imageTitles,
  });

  List1 copyWith({
    List<CrumbPath>? crumbPath,
    String? categoryId,
    String? categoryName,
    String? manufacturerId,
    String? manufacturerName,
    String? maxQty,
    String? minQty,
    String? id,
    String? productsDateAvailable,
    String? description,
    String? condition,
    String? productsViewed,
    String? productsImage3,
    dynamic productsImageTitle3,
    String? productsImage4,
    dynamic productsImageTitle4,
    String? model,
    String? multiplier,
    String? name,
    String? oldPrice,
    int? price,
    String? staffelPrice,
    double? taxRate,
    String? shortDescription,
    String? eanCode,
    String? sku,
    String? productsDateAdded,
    String? lastModifiedAt,
    String? active,
    String? title,
    String? productsUrl,
    String? productsQuantity,
    String? visibleInProductsListingPage,
    String? visibleInProductsDetailPage,
    String? visibleInProductFeed,
    String? productIsOrderable,
    String? stockIndicatorClassName,
    String? stockIndicatorTitle,
    String? stockIndicatorDescription,
    String? addToCartButtonLabel,
    String? addToCartButtonLink,
    String? allowDeliveryDate,
    String? stockIndicatorId,
    String? productsVendorCode,
    int? inStock,
    int? inStockIcon,
    String? stockIndicator,
    String? stockDeliveryTime,
    double? priceExclTax,
    int? finalPriceInclTax,
    String? slug,
    String? ratingCount,
    dynamic ratingValue,
    String? featureHighlight1,
    String? featureHighlight2,
    String? featureHighlight3,
    String? featureHighlight4,
    bool? wishlist,
    List<dynamic>? customLabel,
    bool? hasAttributes,
    dynamic orderUnitId,
    dynamic orderUnitName,
    String? productsSku,
    String? stockClass,
    String? stockIndicatorAltTitle,
    String? stockIndicatorAltDescription,
    String? stockIndicatorAltStartTime,
    String? stockIndicatorAltEndTime,
    MetaData? metaData,
    List<String>? images,
    List<dynamic>? imageTitles,
  }) {
    return List1(
      crumbPath: crumbPath ?? this.crumbPath,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      manufacturerId: manufacturerId ?? this.manufacturerId,
      manufacturerName: manufacturerName ?? this.manufacturerName,
      maxQty: maxQty ?? this.maxQty,
      minQty: minQty ?? this.minQty,
      id: id ?? this.id,
      productsDateAvailable: productsDateAvailable ?? this.productsDateAvailable,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      productsViewed: productsViewed ?? this.productsViewed,
      productsImage3: productsImage3 ?? this.productsImage3,
      productsImageTitle3: productsImageTitle3 ?? this.productsImageTitle3,
      productsImage4: productsImage4 ?? this.productsImage4,
      productsImageTitle4: productsImageTitle4 ?? this.productsImageTitle4,
      model: model ?? this.model,
      multiplier: multiplier ?? this.multiplier,
      name: name ?? this.name,
      oldPrice: oldPrice ?? this.oldPrice,
      price: price ?? this.price,
      staffelPrice: staffelPrice ?? this.staffelPrice,
      taxRate: taxRate ?? this.taxRate,
      shortDescription: shortDescription ?? this.shortDescription,
      eanCode: eanCode ?? this.eanCode,
      sku: sku ?? this.sku,
      productsDateAdded: productsDateAdded ?? this.productsDateAdded,
      lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
      active: active ?? this.active,
      title: title ?? this.title,
      productsUrl: productsUrl ?? this.productsUrl,
      productsQuantity: productsQuantity ?? this.productsQuantity,
      visibleInProductsListingPage: visibleInProductsListingPage ?? this.visibleInProductsListingPage,
      visibleInProductsDetailPage: visibleInProductsDetailPage ?? this.visibleInProductsDetailPage,
      visibleInProductFeed: visibleInProductFeed ?? this.visibleInProductFeed,
      productIsOrderable: productIsOrderable ?? this.productIsOrderable,
      stockIndicatorClassName: stockIndicatorClassName ?? this.stockIndicatorClassName,
      stockIndicatorTitle: stockIndicatorTitle ?? this.stockIndicatorTitle,
      stockIndicatorDescription: stockIndicatorDescription ?? this.stockIndicatorDescription,
      addToCartButtonLabel: addToCartButtonLabel ?? this.addToCartButtonLabel,
      addToCartButtonLink: addToCartButtonLink ?? this.addToCartButtonLink,
      allowDeliveryDate: allowDeliveryDate ?? this.allowDeliveryDate,
      stockIndicatorId: stockIndicatorId ?? this.stockIndicatorId,
      productsVendorCode: productsVendorCode ?? this.productsVendorCode,
      inStock: inStock ?? this.inStock,
      inStockIcon: inStockIcon ?? this.inStockIcon,
      stockIndicator: stockIndicator ?? this.stockIndicator,
      stockDeliveryTime: stockDeliveryTime ?? this.stockDeliveryTime,
      priceExclTax: priceExclTax ?? this.priceExclTax,
      finalPriceInclTax: finalPriceInclTax ?? this.finalPriceInclTax,
      slug: slug ?? this.slug,
      ratingCount: ratingCount ?? this.ratingCount,
      ratingValue: ratingValue ?? this.ratingValue,
      featureHighlight1: featureHighlight1 ?? this.featureHighlight1,
      featureHighlight2: featureHighlight2 ?? this.featureHighlight2,
      featureHighlight3: featureHighlight3 ?? this.featureHighlight3,
      featureHighlight4: featureHighlight4 ?? this.featureHighlight4,
      wishlist: wishlist ?? this.wishlist,
      customLabel: customLabel ?? this.customLabel,
      hasAttributes: hasAttributes ?? this.hasAttributes,
      orderUnitId: orderUnitId ?? this.orderUnitId,
      orderUnitName: orderUnitName ?? this.orderUnitName,
      productsSku: productsSku ?? this.productsSku,
      stockClass: stockClass ?? this.stockClass,
      stockIndicatorAltTitle: stockIndicatorAltTitle ?? this.stockIndicatorAltTitle,
      stockIndicatorAltDescription: stockIndicatorAltDescription ?? this.stockIndicatorAltDescription,
      stockIndicatorAltStartTime: stockIndicatorAltStartTime ?? this.stockIndicatorAltStartTime,
      stockIndicatorAltEndTime: stockIndicatorAltEndTime ?? this.stockIndicatorAltEndTime,
      metaData: metaData ?? this.metaData,
      images: images ?? this.images,
      imageTitles: imageTitles ?? this.imageTitles,
    );
  }

  List1.fromJson(Map<String, dynamic> json)
      : crumbPath = (json['crumbPath'] as List?)?.map((dynamic e) => CrumbPath.fromJson(e as Map<String,dynamic>)).toList(),
        categoryId = json['categoryId'] as String?,
        categoryName = json['categoryName'] as String?,
        manufacturerId = json['manufacturerId'] as String?,
        manufacturerName = json['manufacturerName'] as String?,
        maxQty = json['maxQty'] as String?,
        minQty = json['minQty'] as String?,
        id = json['id'] as String?,
        productsDateAvailable = json['products_date_available'] as String?,
        description = json['description'] as String?,
        condition = json['condition'] as String?,
        productsViewed = json['products_viewed'] as String?,
        productsImage3 = json['products_image3'] as String?,
        productsImageTitle3 = json['products_image_title3'],
        productsImage4 = json['products_image4'] as String?,
        productsImageTitle4 = json['products_image_title4'],
        model = json['model'] as String?,
        multiplier = json['multiplier'] as String?,
        name = json['name'] as String?,
        oldPrice = json['oldPrice'] ,
        price = json['price'] ,
        staffelPrice = json['staffel_price'] as String?,
        taxRate = json['tax_rate'] as double?,
        shortDescription = json['shortDescription'] as String?,
        eanCode = json['eanCode'] as String?,
        sku = json['sku'] as String?,
        productsDateAdded = json['products_date_added'] as String?,
        lastModifiedAt = json['lastModifiedAt'] as String?,
        active = json['active'] as String?,
        title = json['title'] as String?,
        productsUrl = json['products_url'] as String?,
        productsQuantity = json['products_quantity'] as String?,
        visibleInProductsListingPage = json['visible_in_products_listing_page'] as String?,
        visibleInProductsDetailPage = json['visible_in_products_detail_page'] as String?,
        visibleInProductFeed = json['visible_in_product_feed'] as String?,
        productIsOrderable = json['product_is_orderable'] as String?,
        stockIndicatorClassName = json['stock_indicator_class_name'] as String?,
        stockIndicatorTitle = json['stock_indicator_title'] as String?,
        stockIndicatorDescription = json['stock_indicator_description'] as String?,
        addToCartButtonLabel = json['add_to_cart_button_label'] as String?,
        addToCartButtonLink = json['add_to_cart_button_link'] as String?,
        allowDeliveryDate = json['allow_delivery_date'] as String?,
        stockIndicatorId = json['stock_indicator_id'] as String?,
        productsVendorCode = json['products_vendor_code'] as String?,
        inStock = json['inStock'] as int?,
        inStockIcon = json['inStockIcon'] as int?,
        stockIndicator = json['stockIndicator'] as String?,
        stockDeliveryTime = json['stockDeliveryTime'] as String?,
        priceExclTax = json['priceExclTax'] as double?,
        finalPriceInclTax = json['final_price_incl_tax'] ,
        slug = json['slug'] as String?,
        ratingCount = json['ratingCount'] as String?,
        ratingValue = json['ratingValue'],
        featureHighlight1 = json['featureHighlight1'] as String?,
        featureHighlight2 = json['featureHighlight2'] as String?,
        featureHighlight3 = json['featureHighlight3'] as String?,
        featureHighlight4 = json['featureHighlight4'] as String?,
        wishlist = json['wishlist'] as bool?,
        customLabel = json['customLabel'] as List?,
        hasAttributes = json['hasAttributes'] as bool?,
        orderUnitId = json['order_unit_id'],
        orderUnitName = json['order_unit_name'],
        productsSku = json['products_sku'] as String?,
        stockClass = json['stockClass'] as String?,
        stockIndicatorAltTitle = json['stock_indicator_alt_title'] as String?,
        stockIndicatorAltDescription = json['stock_indicator_alt_description'] as String?,
        stockIndicatorAltStartTime = json['stock_indicator_alt_start_time'] as String?,
        stockIndicatorAltEndTime = json['stock_indicator_alt_end_time'] as String?,
        metaData = (json['metaData'] as Map<String,dynamic>?) != null ? MetaData.fromJson(json['metaData'] as Map<String,dynamic>) : null,
        images = (json['images'] as List?)?.map((dynamic e) => e as String).toList(),
        imageTitles = json['imageTitles'] as List?;

  Map<String, dynamic> toJson() => {
    'crumbPath' : crumbPath?.map((e) => e.toJson()).toList(),
    'categoryId' : categoryId,
    'categoryName' : categoryName,
    'manufacturerId' : manufacturerId,
    'manufacturerName' : manufacturerName,
    'maxQty' : maxQty,
    'minQty' : minQty,
    'id' : id,
    'products_date_available' : productsDateAvailable,
    'description' : description,
    'condition' : condition,
    'products_viewed' : productsViewed,
    'products_image3' : productsImage3,
    'products_image_title3' : productsImageTitle3,
    'products_image4' : productsImage4,
    'products_image_title4' : productsImageTitle4,
    'model' : model,
    'multiplier' : multiplier,
    'name' : name,
    'oldPrice' : oldPrice,
    'price' : price,
    'staffel_price' : staffelPrice,
    'tax_rate' : taxRate,
    'shortDescription' : shortDescription,
    'eanCode' : eanCode,
    'sku' : sku,
    'products_date_added' : productsDateAdded,
    'lastModifiedAt' : lastModifiedAt,
    'active' : active,
    'title' : title,
    'products_url' : productsUrl,
    'products_quantity' : productsQuantity,
    'visible_in_products_listing_page' : visibleInProductsListingPage,
    'visible_in_products_detail_page' : visibleInProductsDetailPage,
    'visible_in_product_feed' : visibleInProductFeed,
    'product_is_orderable' : productIsOrderable,
    'stock_indicator_class_name' : stockIndicatorClassName,
    'stock_indicator_title' : stockIndicatorTitle,
    'stock_indicator_description' : stockIndicatorDescription,
    'add_to_cart_button_label' : addToCartButtonLabel,
    'add_to_cart_button_link' : addToCartButtonLink,
    'allow_delivery_date' : allowDeliveryDate,
    'stock_indicator_id' : stockIndicatorId,
    'products_vendor_code' : productsVendorCode,
    'inStock' : inStock,
    'inStockIcon' : inStockIcon,
    'stockIndicator' : stockIndicator,
    'stockDeliveryTime' : stockDeliveryTime,
    'priceExclTax' : priceExclTax,
    'final_price_incl_tax' : finalPriceInclTax,
    'slug' : slug,
    'ratingCount' : ratingCount,
    'ratingValue' : ratingValue,
    'featureHighlight1' : featureHighlight1,
    'featureHighlight2' : featureHighlight2,
    'featureHighlight3' : featureHighlight3,
    'featureHighlight4' : featureHighlight4,
    'wishlist' : wishlist,
    'customLabel' : customLabel,
    'hasAttributes' : hasAttributes,
    'order_unit_id' : orderUnitId,
    'order_unit_name' : orderUnitName,
    'products_sku' : productsSku,
    'stockClass' : stockClass,
    'stock_indicator_alt_title' : stockIndicatorAltTitle,
    'stock_indicator_alt_description' : stockIndicatorAltDescription,
    'stock_indicator_alt_start_time' : stockIndicatorAltStartTime,
    'stock_indicator_alt_end_time' : stockIndicatorAltEndTime,
    'metaData' : metaData?.toJson(),
    'images' : images,
    'imageTitles' : imageTitles
  };
}

class CrumbPath {
  final String? id;
  final String? name;
  final String? slug;

  CrumbPath({
    this.id,
    this.name,
    this.slug,
  });

  CrumbPath copyWith({
    String? id,
    String? name,
    String? slug,
  }) {
    return CrumbPath(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
    );
  }

  CrumbPath.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        slug = json['slug'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'name' : name,
    'slug' : slug
  };
}

class MetaData {
  final String? title;
  final String? robots;
  final String? keywords;
  final String? description;
  final String? canonicalUrl;
  final String? image;
  final int? imageWidth;
  final int? imageHeight;

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

  MetaData copyWith({
    String? title,
    String? robots,
    String? keywords,
    String? description,
    String? canonicalUrl,
    String? image,
    int? imageWidth,
    int? imageHeight,
  }) {
    return MetaData(
      title: title ?? this.title,
      robots: robots ?? this.robots,
      keywords: keywords ?? this.keywords,
      description: description ?? this.description,
      canonicalUrl: canonicalUrl ?? this.canonicalUrl,
      image: image ?? this.image,
      imageWidth: imageWidth ?? this.imageWidth,
      imageHeight: imageHeight ?? this.imageHeight,
    );
  }

  MetaData.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String?,
        robots = json['robots'] as String?,
        keywords = json['keywords'] as String?,
        description = json['description'] as String?,
        canonicalUrl = json['canonicalUrl'] as String?,
        image = json['image'] as String?,
        imageWidth = json['imageWidth'] as int?,
        imageHeight = json['imageHeight'] as int?;

  Map<String, dynamic> toJson() => {
    'title' : title,
    'robots' : robots,
    'keywords' : keywords,
    'description' : description,
    'canonicalUrl' : canonicalUrl,
    'image' : image,
    'imageWidth' : imageWidth,
    'imageHeight' : imageHeight
  };
}