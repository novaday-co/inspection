import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class OnlyAlpha extends RuleStructure implements RuleAbstract {
  OnlyAlpha(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = r'^[a-zA-Z]+$';

  @override
  dynamic customMessage() {
    return trans('alpha', {'name': name});
  }
}
