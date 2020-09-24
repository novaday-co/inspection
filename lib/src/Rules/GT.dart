import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/Rules/Numeric.dart';
import 'package:inspection/src/RuleStructure.dart';

class GT extends RuleStructure implements RuleAbstract {
  double condition;

  GT(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    condition = double.parse(rule.split(':')[1]);
  }

  @override
  bool manualCheck() {
    if (Numeric(inspectionCase).boolValidation())
      return double.parse(input) > condition.toDouble();
    else
      return false;
  }

  @override
  dynamic customMessage() {
    return trans('gt', {'name': name, 'gt': condition.toDouble().toString()});
  }
}
