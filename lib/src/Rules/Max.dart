import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Max extends RuleStructure implements RuleAbstract {
  double maxCondition;

  Max(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    maxCondition = double.parse(rule.split(':')[1]);
  }

  @override
  bool manualCheck() {
    if (input is String)
      return input.length <= maxCondition;
    else
      return input.toString().length <= maxCondition;
  }

  @override
  dynamic customMessage() {
    return trans('max', {'name': name, 'max': maxCondition.toInt().toString()});
  }
}
