import 'dart:convert';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:challenge_registration/app/core/assets/app_images.dart';
import 'package:flutter/material.dart';

class ProductModel {
  late int? id;
  late String name;
  late double? price;
  late int quantityStock;
  late int codeNumber;
  late String? image;
  late DateTime? date;

  ProductModel({
    required this.name,
    this.price,
    required this.quantityStock,
    required this.codeNumber,
    this.image,
    this.date,
    required this.id,
  });

  // type model product get textEditing controoler
  ProductModel.product({
    required TextEditingController name,
    required TextEditingController quantityStock,
    required TextEditingController codeNumber,
    TextEditingController? price,
    required DateTime date,
    required int id,
  })   : name = name.text,
        quantityStock = int.parse(quantityStock.text),
        codeNumber = int.parse(codeNumber.text),
        // string convert to int
        // format value money local to double, case null 0.00
        price = price!.text == ''
            ? 0.00
            : UtilBrasilFields.converterMoedaParaDouble(price.text),
        date = date,
        id = id;

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'price': price,
        'quantityStock': quantityStock,
        'codeNumber': codeNumber,
        'image': image,
        'date': date.toString(),
      };

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      codeNumber: map['codeNumber'],
      quantityStock: map['quantityStock'],
      date: DateTime.parse(map['date']),
      image: map['image'] ?? AppImages.defaultImage,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));
}
