// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    Product({
        required this.data,
    }) {
      // TODO: implement 
      throw UnimplementedError();
    }

    List<Datum> data;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.nameLa,
        required this.nameEn,
        required this.nameCn,
        required this.sellingPrice,
        required this.promotionPrice,
        required this.shortDesLa,
        required this.shortDesEn,
        required this.shortDesCn,
        required this.image,
        required this.categoryId,
        required this.shopId,
    });

    int id;
    String nameLa;
    String nameEn;
    String nameCn;
    int sellingPrice;
    int promotionPrice;
    String shortDesLa;
    String shortDesEn;
    String shortDesCn;
    String image;
    int categoryId;
    int shopId;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        nameLa: json["name_la"],
        nameEn: json["name_en"] == null ? null : json["name_en"],
        nameCn: json["name_cn"] == null ? null : json["name_cn"],
        sellingPrice: json["selling_price"],
        promotionPrice: json["promotion_price"],
        shortDesLa: json["short_des_la"] == null ? null : json["short_des_la"],
        shortDesEn: json["short_des_en"] == null ? null : json["short_des_en"],
        shortDesCn: json["short_des_cn"] == null ? null : json["short_des_cn"],
        image: json["image"],
        categoryId: json["category_id"],
        shopId: json["shop_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name_la": nameLa,
        "name_en": nameEn == null ? null : nameEn,
        "name_cn": nameCn == null ? null : nameCn,
        "selling_price": sellingPrice,
        "promotion_price": promotionPrice,
        "short_des_la": shortDesLa == null ? null : shortDesLa,
        "short_des_en": shortDesEn == null ? null : shortDesEn,
        "short_des_cn": shortDesCn == null ? null : shortDesCn,
        "image": image,
        "category_id": categoryId,
        "shop_id": shopId,
    };
}
