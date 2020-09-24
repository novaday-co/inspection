import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class OnlyInt extends RuleStructure implements RuleAbstract {
  OnlyInt(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = r'^(?:-?(?:0|[1-9][0-9]*))$';

  @override
  dynamic customMessage() {
    return trans('integer', {'name': name});
  }
}
