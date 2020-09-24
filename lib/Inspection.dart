import 'package:inspection/InspectionCase.dart';
import 'package:inspection/Inspector.dart';

// Main package class :
// get optional configuration in constructor
class Inspection extends Inspector {
  String inspectionLocale = 'en';

  Inspection({String inspectionLocale}){
    this.inspectionLocale = inspectionLocale;
  }

  // Main method :
  // Go for validation . First split expected rules and then iterate in rules
  inspect(dynamic input, dynamic rule,
      {String name, String message, String locale}) {
    InspectionCase inspectionCaseObject = new InspectionCase(
        input, rule, name, message, locale ?? inspectionLocale);
    return splitRules(inspectionCaseObject, myCustomRule: myCustomRule);
  }
}

// Helper function for easy usage
inspection(dynamic input, dynamic rule,
    {String name, String message, String locale}) {
  return Inspection()
      .inspect(input, rule, name: name, message: message, locale: locale);
}

// Helper function for easy usage
inspect(dynamic input, dynamic rule,
    {String name, String message, String locale}) {
  return Inspection()
      .inspect(input, rule, name: name, message: message, locale: locale);
}
