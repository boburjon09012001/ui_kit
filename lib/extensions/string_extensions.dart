import 'package:easy_localization/easy_localization.dart';

extension StringExtension on num {
  String get thousandFormat {
    NumberFormat myFormat = NumberFormat.decimalPattern('en_us');
    var text = myFormat.format(this.toInt());
    return text.replaceAll(",", " ");
  }
}
