import 'package:inspection/RuleAbstract.dart';
import 'package:inspection/InspectionCase.dart';
import 'package:inspection/RuleStructure.dart';

class AlphaAndNumber extends RuleStructure implements RuleAbstract {
  AlphaAndNumber(InspectionCase inspectionCaseObject)
      : super(inspectionCaseObject);

  @override
  String regex = r'^[a-zA-Z0-9]+$';

  @override
  dynamic customMessage() {
    return trans('alpha_num', {'name': name});
  }
}
