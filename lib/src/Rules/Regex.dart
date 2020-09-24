import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

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
