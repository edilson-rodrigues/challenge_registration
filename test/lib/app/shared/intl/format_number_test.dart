import 'package:challenge_registration/app/shared/intl/format_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var formatNumber = FormatNumber();

  group('Format Number', () {
    test('price expect as string', () {
      var priceDouble = 1000.00;
      var numberString = formatNumber.currency(priceDouble);

      expect(numberString.runtimeType, String);
    });

    test('price expect formatted', () {
      var priceDouble = 1000.00;
      var numberString = formatNumber.currency(priceDouble);

      expect(numberString, '1.000,00');
    });

    test('date expect as string', () {
      var date = DateTime.now();
      var dateString = formatNumber.date(date);

      expect(dateString.runtimeType, String);
    });

    test('date expect formatted', () {
      var date = DateTime(2020, 05, 12);
      var dateString = formatNumber.date(date);

      expect(dateString, '12/05/2020');
    });
  });
}
