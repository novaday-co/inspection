import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/Rules/Numeric.dart';
import 'package:inspection/RuleStructure.dart';

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
