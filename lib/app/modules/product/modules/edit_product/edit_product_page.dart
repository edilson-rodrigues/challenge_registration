import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/product/models/product_model.dart';
import 'package:challenge_registration/app/modules/product/widget/form_product/form_product_controller.dart';
import 'package:challenge_registration/app/modules/product/widget/form_product/form_product_widget.dart';
import 'package:challenge_registration/app/shared/shared.dart';

class ProductEditPage extends StatefulWidget {
  final ProductModel product;

  const ProductEditPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductEditPageState createState() => _ProductEditPageState();
}

class _ProductEditPageState
    extends ModularState<ProductEditPage, FormProductController> {
  @override
  void initState() {
    controller.editInputs(widget.product);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar produto'),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
          ),
          child: FormProduct(tagHero: widget.product.id,),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ButtonWidget.primary(
                onPressed: () {
                  controller.update(id: widget.product.id!).then((_) async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Atualizado com sucesso!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    await Future.delayed(Duration(seconds: 2));
                    await Navigator.maybePop(context);
                  });
                },
                label: 'Atualizar',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: ButtonWidget.secondary(
                  label: 'Deletar',
                  onPressed: () {
                    controller.remove(id: widget.product.id!).then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Deletado com sucesso!'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.maybePop(context);
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
