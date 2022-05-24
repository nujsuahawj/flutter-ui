// ignore_for_file: prefer_const_constructors

import 'package:all_ui_by_jack/controllers/product_controller.dart';
import 'package:all_ui_by_jack/product_tile.dart';
// ignore: unused_import
import 'package:all_ui_by_jack/seach_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
// ignore: duplicate_import
import 'package:all_ui_by_jack/product_tile.dart';

class Prodcuts extends StatefulWidget {
  const Prodcuts({Key? key}) : super(key: key);

  @override
  State<Prodcuts> createState() => _ProdcutsState();
}

class _ProdcutsState extends State<Prodcuts> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // ignore: prefer_const_constructors
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        title: Text('ສິນຄ້າ'),
        actions: [
          IconButton(
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // ignore: prefer_const_constructors
                Expanded(
                  child: Text(
                    'ສິນຄ້າທັງໝົດ',
                    style: TextStyle(
                        fontFamily: 'bold',
                        fontSize: 23,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() =>StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: productController.productList.length,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              itemBuilder: (context, index) {
                return ProductTile(productController.productList[index]);
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
