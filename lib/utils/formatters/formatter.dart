import 'package:intl/intl.dart';


class CFormater {
  static String formateDate(DateTime? date) {
    date ??=DateTime.now();
    return DateFormat('DD-MM-YYYY').format(date);
  }
}