import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/RuleStructure.dart';
import 'package:inspection/src/Rules/Numeric.dart';

class Between extends RuleStructure implements RuleAbstract {
  double min, max;
  String conditions;

  Between(InspectionCase inspectionCaseObject) : super(inspectionCaseObject) {
    conditions = rule.split(':')[1];
    min = double.parse(conditions.split(',')[0]);
    max = double.parse(conditions.split(',')[1]);
  }

  @override
  bool manualCheck() {
    if (!Numeric(inspectionCase).boolValidation()) {
      var length = input.length;
      if (length <= max && length >= min)
        return true;
      else
        return false;
    } else {
      if (double.parse(input) >= min && double.parse(input) <= max)
        return true;
      else
        return false;
    }
  }

  @override
  dynamic customMessage() {
    return trans('between', {
      'name': name,
      'min': min.toInt().toString(),
      'max': max.toInt().toString()
    });
  }
}
