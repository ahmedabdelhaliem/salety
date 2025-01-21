import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? id;
  final int? userId;
  final int? type;
  final int? ord;
  final String? isUsed;
  final int? categoryId;
  final int? countryId;
  final int? brandId;
  final String? name;
  final String? nameEn;
  final String? details;
  final String? detailsEn;
  final int? colorId;
  final String? tag;
  final String? tagEn;
  final dynamic taxId;
  final String? price;
  final int? discount;
  final dynamic sku;
  final int? quantity;
  final int? notifiQuantity;
  final int? stokeId;
  final dynamic repositoryNumber;
  final String? img;
  final String? productCode;
  final dynamic hashNumber;
  final dynamic barcode;
  final String? barcodeNumber;
  final int? weight;
  final int? numViews;
  final String? isActive;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic userIp;
  final dynamic userPcInfo;
  final dynamic userAdded;
  final int? priceAfterDiscount;
  final int? isFavorite;
  final List<dynamic>? productAttributes;

  const Datum({
    this.id,
    this.userId,
    this.type,
    this.ord,
    this.isUsed,
    this.categoryId,
    this.countryId,
    this.brandId,
    this.name,
    this.nameEn,
    this.details,
    this.detailsEn,
    this.colorId,
    this.tag,
    this.tagEn,
    this.taxId,
    this.price,
    this.discount,
    this.sku,
    this.quantity,
    this.notifiQuantity,
    this.stokeId,
    this.repositoryNumber,
    this.img,
    this.productCode,
    this.hashNumber,
    this.barcode,
    this.barcodeNumber,
    this.weight,
    this.numViews,
    this.isActive,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.userIp,
    this.userPcInfo,
    this.userAdded,
    this.priceAfterDiscount,
    this.isFavorite,
    this.productAttributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        userId: json['user_id'] as int?,
        type: json['type'] as int?,
        ord: json['ord'] as int?,
        isUsed: json['is_used'] as String?,
        categoryId: json['category_id'] as int?,
        countryId: json['country_id'] as int?,
        brandId: json['brand_id'] as int?,
        name: json['name'] as String?,
        nameEn: json['name_en'] as String?,
        details: json['details'] as String?,
        detailsEn: json['details_en'] as String?,
        colorId: json['color_id'] as int?,
        tag: json['tag'] as String?,
        tagEn: json['tag_en'] as String?,
        taxId: json['tax_id'] as dynamic,
        price: json['price'] as String?,
        discount: json['discount'] as int?,
        sku: json['sku'] as dynamic,
        quantity: json['quantity'] as int?,
        notifiQuantity: json['notifi_quantity'] as int?,
        stokeId: json['stoke_id'] as int?,
        repositoryNumber: json['repository_number'] as dynamic,
        img: json['img'] as String?,
        productCode: json['product_code'] as String?,
        hashNumber: json['hash_number'] as dynamic,
        barcode: json['barcode'] as dynamic,
        barcodeNumber: json['barcode_number'] as String?,
        weight: json['weight'] as int?,
        numViews: json['num_views'] as int?,
        isActive: json['is_active'] as String?,
        deletedAt: json['deleted_at'] as dynamic,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        userIp: json['user_ip'] as dynamic,
        userPcInfo: json['user_pc_info'] as dynamic,
        userAdded: json['user_added'] as dynamic,
        priceAfterDiscount: json['price_after_discount'] as int?,
        isFavorite: json['is_favorite'] as int?,
        productAttributes: json['product_attributes'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'type': type,
        'ord': ord,
        'is_used': isUsed,
        'category_id': categoryId,
        'country_id': countryId,
        'brand_id': brandId,
        'name': name,
        'name_en': nameEn,
        'details': details,
        'details_en': detailsEn,
        'color_id': colorId,
        'tag': tag,
        'tag_en': tagEn,
        'tax_id': taxId,
        'price': price,
        'discount': discount,
        'sku': sku,
        'quantity': quantity,
        'notifi_quantity': notifiQuantity,
        'stoke_id': stokeId,
        'repository_number': repositoryNumber,
        'img': img,
        'product_code': productCode,
        'hash_number': hashNumber,
        'barcode': barcode,
        'barcode_number': barcodeNumber,
        'weight': weight,
        'num_views': numViews,
        'is_active': isActive,
        'deleted_at': deletedAt,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'user_ip': userIp,
        'user_pc_info': userPcInfo,
        'user_added': userAdded,
        'price_after_discount': priceAfterDiscount,
        'is_favorite': isFavorite,
        'product_attributes': productAttributes,
      };

  @override
  List<Object?> get props {
    return [
      id,
      userId,
      type,
      ord,
      isUsed,
      categoryId,
      countryId,
      brandId,
      name,
      nameEn,
      details,
      detailsEn,
      colorId,
      tag,
      tagEn,
      taxId,
      price,
      discount,
      sku,
      quantity,
      notifiQuantity,
      stokeId,
      repositoryNumber,
      img,
      productCode,
      hashNumber,
      barcode,
      barcodeNumber,
      weight,
      numViews,
      isActive,
      deletedAt,
      createdAt,
      updatedAt,
      userIp,
      userPcInfo,
      userAdded,
      priceAfterDiscount,
      isFavorite,
      productAttributes,
    ];
  }
}
