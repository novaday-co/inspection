import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class Regex extends RuleStructure implements RuleAbstract {
  String inputRegex;

  Regex(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    inputRegex = rule.split(':')[1];
  }

  @override
  String regex = '';

  @override
  bool manualCheck() {
    regex = inputRegex;
    return false; // go for regex check
  }

  @override
  dynamic customMessage() {
    return trans('regex', {'name': name});
  }
}
