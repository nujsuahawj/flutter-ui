import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
// ignore: unused_import
import 'package:all_ui_by_jack/services/remote_services.dart';
import 'package:all_ui_by_jack/model/product.dart';


class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    // return Scaffold
    return Card(
          child: ListTile(
            title: 
            Text(
                'nas',
                style: TextStyle(color: Colors.white),
              ),
          ),
          color: Colors.green,
        );

  }
}