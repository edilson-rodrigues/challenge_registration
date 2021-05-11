import 'package:flutter/material.dart';
import '../../../app/core/core.dart';
import '../../../app/shared/intl/format_number.dart';

class DateFormattedWidget extends StatefulWidget {
  final DateTime? date;

  const DateFormattedWidget({Key? key, required this.date}) : super(key: key);

  @override
  _DateFormattedWidgetState createState() => _DateFormattedWidgetState();
}

class _DateFormattedWidgetState extends State<DateFormattedWidget> {
  final FormatNumber formatNumber = FormatNumber();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.date == null ? 'invalid' : formatNumber.date(widget.date!),
          style: TextStyle(
            color: AppColors.inkLighter,
          ),
        ),
      ],
    );
  }
}
