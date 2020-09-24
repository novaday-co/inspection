import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/Rules/Numeric.dart';
import 'package:inspection/RuleStructure.dart';

class LTE extends RuleStructure implements RuleAbstract {
  double condition;

  LTE(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    condition = double.parse(rule.split(':')[1]);
  }

  @override
  bool manualCheck() {
    if (Numeric(inspectionCase).boolValidation())
      return double.parse(input) <= condition;
    else
      return false;
  }

  @override
  dynamic customMessage() {
    return trans('lte', {'name': name, 'lte': condition.toInt().toString()});
  }
}
