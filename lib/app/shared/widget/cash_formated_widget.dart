import 'package:flutter/material.dart';
import '../../../app/core/core.dart';
import '../../../app/shared/intl/format_number.dart';

class CashFormattedWidget extends StatefulWidget {
  final double? values;

  const CashFormattedWidget({Key? key, required this.values}) : super(key: key);

  @override
  _CashFormattedWidgetState createState() => _CashFormattedWidgetState();
}

class _CashFormattedWidgetState extends State<CashFormattedWidget> {
  final FormatNumber formatNumber = FormatNumber();

  @override
  Widget build(BuildContext context) {
    return Text(
      'R\$ ${widget.values == null ? 'invalid' : formatNumber.currency(widget.values!)}',
      style: TextStyle(
        color: AppColors.inkLighter,
      ),
    );
  }
}
