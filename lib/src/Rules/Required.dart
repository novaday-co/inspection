import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Required extends RuleStructure implements RuleAbstract {
  Required(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  // required rule conditions and checkers are in RuleStructure

  @override
  dynamic customMessage() {
    return trans('required', {'name': name});
  }
}
