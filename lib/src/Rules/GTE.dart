import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/Rules/Numeric.dart';
import 'package:inspection/src/RuleStructure.dart';

class GTE extends RuleStructure implements RuleAbstract {
  double? condition;

  GTE(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    condition = double.parse(rule.split(':')[1]);
  }

  @override
  bool manualCheck() {
    if (Numeric(inspectionCase).boolValidation())
      return double.parse(input!) >= condition!;
    else
      return false;
  }

  @override
  dynamic customMessage() {
    return trans('gte', {'name': name, 'gte': condition!.toInt().toString()});
  }
}
