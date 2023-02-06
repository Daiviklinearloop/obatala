import 'package:get/get.dart';
import 'package:obatala/localization/nl/nl_translations.dart';
import 'package:obatala/localization/en_us/en_us_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': enUs,'nl': nl};

}
