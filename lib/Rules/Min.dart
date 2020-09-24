import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class Min extends RuleStructure implements RuleAbstract {
  double minCondition;

  Min(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    minCondition = double.parse(rule.split(':')[1]);
  }

  @override
  bool manualCheck() {
    if (input is String)
      return input.length >= minCondition;
    else
      return input.toString().length >= minCondition;
  }

  @override
  dynamic customMessage() {
    return trans('min', {'name': name, 'min': minCondition.toInt().toString()});
  }
}
