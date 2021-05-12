import 'package:challenge_registration/app/modules/product/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widget/product_count/product_count_widget.dart';
import 'widget/product_filter/product_filter_widget.dart';
import 'widget/product_list/product_list_widget.dart';

import '../../../app/shared/shared.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  @override
  void initState() {
    controller.getProductLocalStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCountWidget(),
                    ProductFilterWidget(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ProductListWidget(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonWidget.primary(
            label: 'Cadastrar',
            onPressed: () => Modular.to.pushNamed('/product/register/'),
          ),
        ),
      ),
    );
  }
}
