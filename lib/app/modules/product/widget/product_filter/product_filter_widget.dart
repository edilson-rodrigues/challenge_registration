import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/core/core.dart';
import '../../../../../app/modules/product/widget/product_filter/product_filter_controller.dart';

import 'product_filter_state.dart';

class ProductFilterWidget extends StatefulWidget {
  const ProductFilterWidget({Key? key}) : super(key: key);

  @override
  _ProductFilterWidgetState createState() => _ProductFilterWidgetState();
}

class _ProductFilterWidgetState
    extends ModularState<ProductFilterWidget, ProductFilterController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Filtrar  ',
          style: TextStyle(
            color: AppColors.blueShade,
            fontWeight: FontWeight.bold,
          ),
        ),
        AnimatedBuilder(
          animation: controller,
          builder: (context, child) => DropdownButton<ProductOrderState>(
            value: controller.dropdownValue,
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: AppColors.cyanShade,
            ),
            iconSize: 24,
            elevation: 0,
            dropdownColor: AppColors.blueTint[40],
            style: const TextStyle(
              color: AppColors.blueShade,
            ),
            onChanged: controller.onChanged,
            items: controller.productOrderList
                .map<DropdownMenuItem<ProductOrderState>>(
                    (ProductOrderState value) {
              return DropdownMenuItem<ProductOrderState>(
                value: value,
                child: Text(controller.menuItem(value)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
