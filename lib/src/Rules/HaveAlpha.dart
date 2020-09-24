import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class HaveAlpha extends RuleStructure implements RuleAbstract {
  HaveAlpha(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = '([A-Za-z])+';

  @override
  dynamic customMessage() {
    return trans('have_alpha', {'name': name});
  }
}
