import 'package:inspection/src/Inspector.dart';
import 'package:inspection/src/InspectionCase.dart';

// Main package class :
// get optional configuration in constructor
class Inspection extends Inspector {
  String inspectionLocale = 'en';

  Inspection({String? inspectionLocale='fa'}) {
    this.inspectionLocale = inspectionLocale!;
  }

  // Main method :
  // Go for validation . First split expected rules and then iterate in rules
  String? inspect(dynamic input, dynamic rule,
      {String? name, String? message, String? locale}) {
    InspectionCase inspectionCaseObject = new InspectionCase(
        input, rule, name, message, locale ?? inspectionLocale);
    return splitRules(inspectionCaseObject, myCustomRule: myCustomRule);
  }
}

// Helper function for easy usage
String? inspection(dynamic input, dynamic rule,
    {String? name, String? message, String? locale}) {
  return Inspection()
      .inspect(input, rule, name: name, message: message, locale: locale);
}

// Helper function for easy usage
String? inspect(dynamic input, dynamic rule,
    {String? name, String? message, String? locale}) {
  return Inspection()
      .inspect(input, rule, name: name, message: message, locale: locale);
}
