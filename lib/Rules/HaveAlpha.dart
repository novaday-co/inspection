import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class HaveAlpha extends RuleStructure implements RuleAbstract {
  HaveAlpha(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String regex = '([A-Za-z])+';

  @override
  dynamic customMessage() {
    return trans('have_alpha', {'name': name});
  }
}
