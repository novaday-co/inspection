import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class AlphaAndNumber extends RuleStructure implements RuleAbstract {
  AlphaAndNumber(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  String? regex = r'^[a-zA-Z0-9]+$';

  @override
  dynamic customMessage() {
    return trans('alpha_num', {'name': name});
  }
}
