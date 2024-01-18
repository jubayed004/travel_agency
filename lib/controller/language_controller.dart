import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:travel_agency/utils/languages/bangla.dart';
import 'package:travel_agency/utils/languages/english.dart';

//Languages Controller
class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    "en_US" : english, //List All Language "LanguageCode_CountryCode" : Language File,
    "bn_BD" : bangla
  };
}