import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class FormatNumber {
  // return price format br 1.000,00 , remove substring BRL
  String currency(double value) {
    return NumberFormat.currency(locale: 'pt').format(value).substring(3);
  }

  // return date format pt_br 11/05/2021
  String date(DateTime date) {
    initializeDateFormatting();
    var format = DateFormat.yMd('pt');
    var dateString = format.format(date);
    return dateString;
  }
}
