import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/modules/product/models/product_model.dart';
import '../../../../../app/shared/widget/cash_formated_widget.dart';
import '../../../../../app/shared/widget/date_formated_widget.dart';
import 'package:challenge_registration/app/core/core.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onPressed;

  const ProductCardWidget({
    Key? key,
    required this.product,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () {
          Modular.to.navigate('/product/edit/', arguments: product);
        },
        child: ListTile(
          leading: Hero(
            tag: '${product.name}',
            child: Image.asset(
              AppImages.defaultImage,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: Theme.of(context).textTheme.bodyText1!.merge(
                      TextStyle(
                        color: AppColors.inkLighter,
                      ),
                    ),
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.delete_forever_outlined,
                  color: AppColors.redTint,
                ),
              ),
            ],
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  CashFormattedWidget(values: product.price!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Qtd: ${product.quantityStock}',
                    style: TextStyle(
                      color: AppColors.inkLighter,
                    ),
                  ),
                  DateFormattedWidget(date: product.date!),
                ],
              ),
            ],
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}
