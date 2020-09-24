import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class OnlyInt extends RuleStructure implements RuleAbstract {
  OnlyInt(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = r'^(?:-?(?:0|[1-9][0-9]*))$';

  @override
  dynamic customMessage() {
    return trans('integer', {'name': name});
  }
}
