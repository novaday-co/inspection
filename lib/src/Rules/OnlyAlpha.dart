import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class OnlyAlpha extends RuleStructure implements RuleAbstract {
  OnlyAlpha(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String? regex = r'^[a-zA-Z]+$';

  @override
  dynamic customMessage() {
    return trans('alpha', {'name': name});
  }
}
